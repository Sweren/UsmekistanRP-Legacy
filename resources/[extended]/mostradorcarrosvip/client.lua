ESX = nil
local spawnedCars = {}
local testdriving = false
local vip = 0

local run = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
end)

function getCarId(cartbl)
    for _,v in ipairs(Config.cars) do if v==cartbl then return _ end end
    return false
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.render_center, false)<=Config.render_distance then
 

                local closest_car = nil
                for k,v in ipairs(Config.cars) do
                    if spawnedCars[k]==nil or (not DoesEntityExist(spawnedCars[k][2]) and spawnedCars[k]~="spawning") then
                        spawnedCars[k]="spawning"
                        ESX.Game.SpawnLocalVehicle(v.model, v.pos, v.heading*1.0, function(veh)
                            spawnedCars[k] = {v,veh,k}
                            SetVehicleDoorsLocked(veh, 2)
                            SetVehicleAsNoLongerNeeded(veh)
                            --for i=0,7 do SetVehicleDoorCanBreak(veh, i, false) ;SetVehicleDoorOpen(veh, i, false, false) end
                            SetEntityInvincible(veh, true)
                            SetVehicleUndriveable(veh, true)
                            SetEntityMaxSpeed(veh, 0.0)
                            
                        end)

                    end
                    --closest_car = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),v.pos,false)<GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),closest_car~=nil and closest_car.pos or vector3(0,0,0),false) and v or closest_car
                end
                --[[ local x,y,z = table.unpack(closest_car.pos)
                local close = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),closest_car.pos,false)<4.5
                if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),closest_car.pos,false)<10.0 then
                    ESX.Game.Utils.DrawText3D(vector3(x,y,z+1), "[~b~"..(closest_car.label~=nil and closest_car.label or GetDisplayNameFromVehicleModel(GetHashKey(closest_car.model))).."~s~]", 1)
                    ESX.Game.Utils.DrawText3D(vector3(x,y,z+0.85), "Presiona ["..((close and Config.allow_test_drive and not testdriving) and "~r~" or "~c~").."F".."~s~] para el test drive.", 1)
                end
                if close and IsControlJustPressed(0, 51) then
                    ESX.TriggerServerCallback('fn_vehicleshop2:buy', function(canbuy)
                        if canbuy then
                            ESX.Game.SpawnVehicle(closest_car.model, Config.buy_point.pos, Config.buy_point.heading*1.0, function(vehicle)
                                TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
                                local vehProps = ESX.Game.GetVehicleProperties(vehicle)
                                TriggerServerEvent('esx_vehicleshop:setVehicleOwned', vehProps)
                                ESX.ShowNotification("Has comprado ~b~"..(closest_car.label~=nil and closest_car.label or GetDisplayNameFromVehicleModel(GetHashKey(closest_car.model))).."~s~ por "..Config["currency"].."~r~"..ESX.Math.GroupDigits(closest_car.price))
                            end)
                        end
                    end, getCarId(closest_car)) 
                elseif close and IsControlJustPressed(0, 23) and Config.allow_test_drive and not testdriving then
                    ESX.TriggerServerCallback('UVIPCore:getVIPStatus', function(isVIP) if isVIP then setVIP() end end)

                    Citizen.Wait(200)
                    
                    if vip == 1 then
                        drive()
                    else
                        exports['mythic_notify']:DoLongHudText('error', 'ERROR: Debes ser donador para realizar el Test Drive VIP. Si consideras que esto es un error contacta al STAFF.')
                    end
                end ]]
            
        else
            run = false
            for k,v in ipairs(spawnedCars) do
                DeleteEntity(v[2])
                spawnedCars[k]=nil
            end
        end
    end
end)

function disp_time(time)
    local minutes = math.floor((time%3600)/60)
    local seconds = math.floor((time%60))
    return string.format("~b~%02d~s~m ~b~%02d~s~s",minutes,seconds)
end

function startTimer(timer)
    Citizen.CreateThread(function()
        Citizen.CreateThread(function()
            while timer>0 do
                Citizen.Wait(1000)
                timer=timer-1
            end
        end)
        while timer>0 do
            Citizen.Wait(0)
            SetTextFont(4)
            SetTextScale(0.45, 0.45)
            SetTextColour(185, 185, 185, 255)
            SetTextDropshadow(0, 0, 0, 0, 255)
            SetTextEdge(1, 0, 0, 0, 255)
            SetTextDropShadow()
            SetTextOutline()
            BeginTextCommandDisplayText('STRING')
            AddTextComponentSubstringPlayerName(disp_time(timer).." - Test Drive VIP")
            EndTextCommandDisplayText(0.05, 0.55)
        end
    end)
end

function drive()
    for k,v in ipairs(Config.cars) do
        closest_car = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),v.pos,false)<GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),closest_car~=nil and closest_car.pos or vector3(0,0,0),false) and v or closest_car
    end

    ESX.Game.SpawnVehicle(closest_car.model, Config.test_point.pos, Config.test_point.heading*1.0, function(vehicle)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
        startTimer(Config.test_drive_time)
        testdriving = true
        local id = ESX.SetTimeout(Config.test_drive_time*1000, function()
            testdriving = false
            DeleteEntity(vehicle)
            SetEntityCoords(GetPlayerPed(-1),Config.test_point.pos,0,0,0,false)
        end)
    end)
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    ESX.TriggerServerCallback('UVIPCore:getVIPStatus', function(isVIP) if isVIP then setVIP() end end)
end)

function setVIP()
    Citizen.CreateThread(function()
        while vip == 0 do
        Citizen.Wait(1)
        vip = 1
        end
    end)
end

Citizen.CreateThread(function()
	local blip = AddBlipForCoord(vector3(-1258.9527587891,-358.82238769531,38.239803314209))

	SetBlipSprite (blip, 326)
	SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 1.0)
    SetBlipColour (blip, 42)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName("Concesionario VIP")
	EndTextCommandSetBlipName(blip)
end)