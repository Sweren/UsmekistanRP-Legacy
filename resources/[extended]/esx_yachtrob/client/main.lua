local PlayerData                = {}
ESX                             = nil

local heist = false
local tags = false
local searched = 0
local location1 = false
local location2 = false
local location3 = false
local location4 = false
local location5 = false
local location6 = false
local location7 = false
local location8 = false
local location9 = false
local location10 = false
local location11 = false
local location12 = false
local location13 = false
local location14 = false
local location15 = false
local location16 = false
local location17 = false
local location18 = false
local location19 = false
local location20 = false

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
  end)  

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
      local ped = PlayerPedId()
        if heist == false then
        if GetDistanceBetweenCoords(GetEntityCoords(ped), -2084.88, -1018.12, 12.78, true) < 10 then
            ESX.Game.Utils.DrawText3D({x = -2084.95, y = -1018.08, z = 12.78}, "NACIŚNIJ [~g~E~s~] ABY ROZPOCZĄĆ NAPAD", 0.55, 1, "~r~RABUNEK JACHTU", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2084.88, -1018.12, 12.78, true) < 1 then
                    --ESX.ShowHelpNotification(_U('start_robbery'))
                        if IsControlJustReleased(1, 51) then
                            TriggerServerEvent("route68_yacht_reb:robbery")
                        end
                    end
                end
            end
        end
    end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
            local ped = PlayerPedId()
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2084.88, -1018.12, 12.78, true) > 100 then
                heist = false
                tags = false
            end
        end
    end)
        
RegisterNetEvent("route68_yacht_reb:start")
AddEventHandler("route68_yacht_reb:start", function()
  heist = true
  tags = true
  Citizen.CreateThread(function()
    while true do 
      Citizen.Wait(1)
        local ped = PlayerPedId()
        if location1 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2054.18, -1032.38, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2054.18, y = -1032.38, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2054.18, -1032.38, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location1 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location2 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2051.59, -1024.84, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2051.59, y = -1024.84, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2051.59, -1024.84, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location2 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location3 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2076.74, -1018.55, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2076.74, y = -1018.55, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2076.74, -1018.55, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location3 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location4 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2078.1, -1022.55, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2078.1, y = -1022.55, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2078.1, -1022.55, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location4 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location5 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2087.27, -1019.9, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2087.27, y = -1019.9, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2087.27, -1019.9, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location5 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location6 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2085.70, -1015.18, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2085.70, y = -1015.18, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2085.70, -1015.18, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location6 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location7 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.22, -1014.49, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2096.22, y = -1014.49, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.22, -1014.49, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location7 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location8 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2094.77, -1020.14, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2094.77, y = -1020.14, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2094.77, -1020.14, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location8 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location9 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2090.70, -1010.64, 8.97, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2090.70, y = -1010.64, z = 8.97}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2090.70, -1010.64, 8.97, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location9 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location10 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.18, -1016.3, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2096.18, y = -1016.3, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.18, -1016.3, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location10 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location11 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.1, -1008.06, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2096.1, y = -1008.06, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.1, -1008.06, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location11 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location12 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2090.33, -1013.92, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2090.33, y = -1013.92, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2090.33, -1013.92, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location12 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location13 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2089.00, -1009.75, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2089.00, y = -1009.75, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2089.00, -1009.75, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location13 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location14 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2084.56, -1014.13, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2084.56, y = -1014.13, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2084.56, -1014.13, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location14 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location15 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2082.85, -1012.15, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2082.85, y = -1012.15, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2082.85, -1012.15, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location15 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location16 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2077.13, -1022.54, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2077.13, y = -1022.54, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2077.13, -1022.54, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location16 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location17 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2071.12, -1020.73, 5.88, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2071.12, y = -1020.73, z = 5.88}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2071.12, -1020.73, 5.88, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location17 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location18 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2083.51, -1018.52, 12.78, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2083.51, y = -1018.52, z = 12.78}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2083.51, -1018.52, 12.78, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location18 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location19 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2073.03, -1018.47, 11.78, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2073.03, y = -1018.47, z = 11.78}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2073.03, -1018.47, 11.78, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location19 = true
                            searched = searched+1
                        end
                    end
                end
            end
        if location20 == false and tags == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2075.15, -1024.79, 11.78, true) < 10 then
                ESX.Game.Utils.DrawText3D({ x = -2075.15, y = -1024.79, z = 11.78}, "Presiona [~g~E~s~] Para buscar~n~En este lugar", 0.55, 1.0, "~b~Buscar", 0.7)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), -2075.15, -1024.79, 11.78, true) < 1 then
                    --ESX.ShowHelpNotification(_U('search_robbery'))
                        if IsControlJustReleased(1, 51) then
                            Animacja()
                            location20 = true
                            searched = searched+1
                        end
                    end
                end
            end
        end
    end)
end)

Citizen.CreateThread(function()
    while searched < 7 do 
        Citizen.Wait(100)
            if searched == 7 then
                TriggerServerEvent("route68_yacht_reb:reward")
                heist = false
                tags = false
                Citizen.Wait(19000)
                ESX.ShowNotification(_U('suitcase_found'))
            end
        end
    end)

    local Szuka = false
    local procenty = nil

function Animacja()
  local ped = PlayerPedId()
  Citizen.CreateThread(function()
    RequestAnimDict("mini@triathlon")
    Citizen.Wait(100)
    Szuka = true
    procenty = 0
    TaskPlayAnim((ped), 'mini@triathlon', 'rummage_bag', 2.0, 2.0, -1, 81, 0, 0, 0, 0)
    FreezeEntityPosition(PlayerPedId(), true)
    Citizen.Wait(19000)
    ClearPedTasks(ped)
    FreezeEntityPosition(PlayerPedId(), false)
    Szuka = false
    procenty= nil
  end)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Szuka == true then
            local coords = GetEntityCoords(GetPlayerPed(-1))
            local PozycjaTekstu= {
                ["x"] = coords.x,
                ["y"] = coords.y,
                ["z"] = coords.z + 0.5
            }
            ESX.Game.Utils.DrawText3D(PozycjaTekstu, "Buscando~n~~b~"..math.floor(procenty).."~s~%", 0.25)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        if Szuka == true then
            procenty = procenty + 0.56
        end
    end
end)

RegisterNetEvent("route68_yacht_reb:notification")
AddEventHandler("route68_yacht_reb:notification", function(text)
    ESX.ShowNotification(text)
end)

RegisterNetEvent("route68_yacht_reb:notify")
AddEventHandler("route68_yacht_reb:notify", function(text)
    ESX.ShowNotification(_U('notification'))
    PlaySoundFrontend(-1, "HACKING_SUCCESS", 0, 1)

    local info = {title="^Rabunek jachtu", colour=3, id=161, x=-2062.59, y=-1025.11, z=14.89}

    local blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(blip, info.id)
	  SetBlipDisplay(blip, 4)
	  SetBlipScale(blip, 1.3)
      SetBlipColour(blip, info.colour)
      SetBlipAsShortRange(blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(blip)

      Citizen.Wait(30000)
      RemoveBlip(blip)
end)