ESX                           = nil

local PlayerData              = {}
local KlubZamkniety = true

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(1)
    end

    while ESX.GetPlayerData() == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()

    --LoadMarkers()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            local plyCoords = GetEntityCoords(PlayerPedId())

            for location, val in pairs(Config.Teleporters) do

                local Enter = val['Enter']
                local Exit = val['Exit']
                local JobNeeded = val['Job']

                local dstCheckEnter, dstCheckExit = GetDistanceBetweenCoords(plyCoords, Enter['x'], Enter['y'], Enter['z'], true), GetDistanceBetweenCoords(plyCoords, Exit['x'], Exit['y'], Exit['z'], true)
                    if dstCheckEnter <= 5 then
                        if JobNeeded ~= 'none' then
                            if PlayerData.job.name == JobNeeded then

                                DrawM(Enter['Information'], 27, Enter['x'], Enter['y'], Enter['z'])

                                if dstCheckEnter <= 1.2 then
                                    local playerPed = PlayerPedId()
                                    if IsControlJustPressed(0, 38) then
                                        Teleport(val, 'enter')
                                        FreezeEntityPosition(playerPed, true)
                                        Citizen.Wait(300)
                                        FreezeEntityPosition(playerPed, false)                                    
                                    end
                                end

                            end
                        else
                            DrawM(Enter['Information'], 27, Enter['x'], Enter['y'], Enter['z'])

                            if dstCheckEnter <= 1.2 then

                                local playerPed = PlayerPedId()
                                if IsControlJustPressed(0, 38) then
                                    Teleport(val, 'enter')
                                    FreezeEntityPosition(playerPed, true)
                                    Citizen.Wait(400)
                                    FreezeEntityPosition(playerPed, false)
                                end

                            end

                        end
                    end

                    if dstCheckExit <= 5 then
                        if JobNeeded ~= 'none' then
                            if PlayerData.job.name == JobNeeded then

                                DrawM(Exit['Information'], 27, Exit['x'], Exit['y'], Exit['z'])

                                if dstCheckExit <= 1.2 then
                                    local playerPed = PlayerPedId()
                                    if IsControlJustPressed(0, 38) then
                                        Teleport(val, 'exit')
                                        FreezeEntityPosition(playerPed, true)
                                        Citizen.Wait(300)
                                        FreezeEntityPosition(playerPed, false)
                                    end
                                end

                            end
                        else

                            DrawM(Exit['Information'], 27, Exit['x'], Exit['y'], Exit['z'])

                            if dstCheckExit <= 1.2 then

                                local playerPed = PlayerPedId()
                                if IsControlJustPressed(0, 38) then
                                    Teleport(val, 'exit')
                                    FreezeEntityPosition(playerPed, true)
                                    Citizen.Wait(300)
                                    FreezeEntityPosition(playerPed, false)
                                end

                            end
                        end
                    end

            end

        end

    end)


if(IsPedInAnyVehicle(targetPed))then
	targetPed = GetVehiclePedIsUsing(targetPed)
end

function Teleport(table, location)
    if location == 'enter' then
        DoScreenFadeOut(400)

        Citizen.Wait(500)

        if IsPedInAnyVehicle(PlayerPedId(), true) then
            ESX.Game.Teleport(GetVehiclePedIsUsing(PlayerPedId()), table['Exit'])
        else
            ESX.Game.Teleport(PlayerPedId(), table['Exit'])
        end

        --ESX.Game.Teleport(PlayerPedId(), table['Exit'])

        Citizen.Wait(500)

        DoScreenFadeIn(400)
    else
        DoScreenFadeOut(400)

        Citizen.Wait(500)

        if IsPedInAnyVehicle(PlayerPedId(), true) then
            ESX.Game.Teleport(GetVehiclePedIsUsing(PlayerPedId()), table['Enter'])
        else
            ESX.Game.Teleport(PlayerPedId(), table['Enter'])
        end

        --ESX.Game.Teleport(PlayerPedId(), table['Enter'])

        Citizen.Wait(500)

        DoScreenFadeIn(400)
    end
end


function DrawM(hint, type, x, y, z)
    ESX.Game.Utils.DrawText3D({x = x, y = y, z = z + 1.0}, hint, 0.4)
	DrawMarker(21, x, y, z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 0, 255, 51, 51, 0.6, false, true, 22, false, false, false, false)
end
