local CurrentActionData, PlayerData, userProperties, this_Garage, BlipList, PrivateBlips, JobBlips = {}, {}, {}, {}, {}, {}, {}
local HasAlreadyEnteredMarker = false
local LastZone, CurrentAction, CurrentActionMsg
local WasInPound, WasinJPound = false, false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('TruckingJob:hasEnteredMarker', function(zone)
	if zone == 'car_store_point' then
		CurrentAction = 'car_store_point'
		CurrentActionMsg = "Presiona ~INPUT_CONTEXT~ para eliminar el vehículo"
		CurrentActionData = {}
	end
end)

-- Exited Marker
AddEventHandler('TruckingJob:hasExitedMarker', function()
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerCoords = GetEntityCoords(PlayerPedId())
		local isInMarker, letSleep, currentZone = false, true

		if Config.UseCarGarages then
			for k,v in pairs(Config.CarGarages) do
				local distance2 = #(playerCoords - v.Deleter)

				if distance2 < Config.DrawDistance then
					letSleep = false

					if Config.DeleteMarker.Type ~= -1 then
						DrawMarker(Config.DeleteMarker.Type, v.Deleter, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.DeleteMarker.x, Config.DeleteMarker.y, Config.DeleteMarker.z, Config.DeleteMarker.r, Config.DeleteMarker.g, Config.DeleteMarker.b, 100, false, true, 2, false, nil, nil, false)
					end

					if distance2 < Config.DeleteMarker.x then
						isInMarker, this_Garage, currentZone = true, v, 'car_store_point'
					end
				end
			end
		end


		if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
			HasAlreadyEnteredMarker, LastZone = true, currentZone
			LastZone = currentZone
			TriggerEvent('TruckingJob:hasEnteredMarker', currentZone)
		end

		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('TruckingJob:hasExitedMarker', LastZone)
		end

		if letSleep then
			Citizen.Wait(500)
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if CurrentAction then
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, 38) then
				if CurrentAction == 'car_store_point' then
					DeleteV()
				end

				CurrentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)

function DeleteV()
    local ped = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(ped, false)

    ESX.Game.DeleteVehicle(vehicle)
end

RegisterNetEvent('TruckingJob:spawnBike')
AddEventHandler('TruckingJob:spawnBike', function(vehicle)
  print('Event fired')
end)