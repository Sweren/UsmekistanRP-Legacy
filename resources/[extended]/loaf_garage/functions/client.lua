--[[-----------------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
© Loaf Scripts 2020 All Rights Reserved
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--]]-----------------------------------

--[[------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SHARING THIS FILE IS ILLEGAL
!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--]]------------------------

ESX = nil

CreateThread(function()
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj 
        end)
        Wait(0) 
    end

    while ESX['GetPlayerData']()['job'] == nil do 
        Wait(0) 
    end

    for k, v in pairs(Config['Garages']) do
        CreateBlip(v['coords'], 357, 74, Strings['garage'])
    end

    for k, v in pairs(Config['Impounds']) do
        CreateBlip(v['Menu'], 67, 47, Strings['impound_blip'])
    end
end)

Marker = function(coords)
    DrawMarker(1, coords, vector3(0.0, 0.0, 0.0), vector3(0.0, 0.0, 0.0), vector3(1.0, 1.0, 1.2), 120, 255, 255, 150, false, false, 2, false, false, false)
end

GetDamages = function(vehicle)
    local props = ESX['Game']['GetVehicleProperties'](vehicle)

    local damages = {
        ['damaged_windows'] = {}, 
        ['burst_tires'] = {}, 
        ['broken_doors'] = {}, 
        ['body_health'] = GetVehicleBodyHealth(vehicle), 
        ['engine_health'] = GetVehicleEngineHealth(vehicle)
    }
    for i = 0, GetVehicleNumberOfWheels(vehicle) do
        if IsVehicleTyreBurst(vehicle, i, false) then table.insert(damages['burst_tires'], i) end 
    end
    for i = 0, 4 do
        if not IsVehicleWindowIntact(vehicle, i) then table.insert(damages['damaged_windows'], i) end
    end
    for i = 0, GetNumberOfVehicleDoors(vehicle) do 
        if IsVehicleDoorDamaged(vehicle, i) then table.insert(damages['broken_doors'], i) end 
    end

    return damages
end

SetDamages = function(car, damages)
    for i = 0, 4 do
        if damages['damaged_windows'] then
            if damages['damaged_windows'][i] then
                SmashVehicleWindow(car, damages['damaged_windows'][i])
            end
        end
        if damages['burst_tires'] then
            if damages['burst_tires'][i] then
                SetVehicleTyreBurst(car, damages['burst_tires'][i], true, 1000.0)
            end
        end
        if damages['broken_doors'] then
            if damages['broken_doors'][i] then
                SetVehicleDoorBroken(car, damages['broken_doors'][i], true)
            end
        end
    end
    if damages['body_health'] then
        SetVehicleBodyHealth(car, damages['body_health'])
        print(damages['body_health'])
    end
    if damages['engine_health'] then
        SetVehicleEngineHealth(car, damages['engine_health'])
    end
end

VehicleExists = function(plate)
    local data = {}
    local handle, ent, success = FindFirstVehicle()

    repeat
        success, vehicle = FindNextVehicle(handle)
        if DoesEntityExist(vehicle) then
            if GetVehicleNumberPlateText(vehicle):gsub(' ', '') == plate:gsub(' ', '') then
                return true
            end
        end
	until not success

    EndFindVehicle(handle)
    return false
end

CreateBlip = function(coords, sprite, color, text)
    local blip = AddBlipForCoord(coords)
	SetBlipSprite (blip, sprite)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.75)
	SetBlipColour (blip, color)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end