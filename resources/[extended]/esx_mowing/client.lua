ESX              = nil
local PlayerData = {}

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

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local coords = GetEntityCoords(PlayerPedId())

		for k,v in pairs(Config.Zones) do
			if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(100)

		local coords      = GetEntityCoords(PlayerPedId())
		local isInMarker  = false
		local currentZone = nil

		for k,v in pairs(Config.Zones) do
			if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
			end
		end

		if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
			HasAlreadyEnteredMarker = true
			LastZone                = currentZone
			TriggerEvent('rasen:hasEnteredMarker', currentZone)
		end

		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('rasen:hasExitedMarker', LastZone)
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if CurrentAction then

			if IsControlJustReleased(0, 38) then
				if CurrentAction == 'menu' then
					openmenu()
				end

				CurrentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)

AddEventHandler('rasen:hasEnteredMarker', function(zone)
	if zone == 'rasen' then
		CurrentAction     = 'menu'
		CurrentActionData = {}
	end
end)

AddEventHandler('rasen:hasExitedMarker', function(zone)
	CurrentAction = nil
	ESX.UI.Menu.CloseAll()
end)

local startCount = false
local isPedDriven = false
local points = 0
local veh = nil

function openmenu()
	local elements = {}

	table.insert(elements, {
		label = "Iniciar",
		value = "starten"
	})

	table.insert(elements, {
		label = "Despachar",
		value = "verkaufen"
	})

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'menu', {
		title    = "Cortar el césped",
		elements = elements,
		align    = 'right'
	}, function(data, menu)
		if data.current.value == 'starten' then
			points = 0
			menu.close()
			if startCount == true then
				ESX.ShowNotification("~r~Ya estás cortando el césped")
			else 
				start()
				ESX.ShowNotification("~g~Diviértete cortando el césped")
			end
		elseif data.current.value == 'verkaufen' then
			menu.close()
			if points > 0 and startCount == true then
				TriggerServerEvent("rasen:pay", points)
				ESX.Game.DeleteVehicle(veh)
				startCount = false
				ESX.ShowNotification("~g~Muchas gracias. Obtuviste $" .. points * 18 .. " por cortar el césped.")
			else
				ESX.ShowNotification("~r~Aún no has conducido lo suficiente")
			end
		end
	end, function(data, menu)
		menu.close()
		CurrentAction     = 'menu'
		CurrentActionData = {}
	end)
end

function start()
	local playerId = PlayerPedId()
	ESX.Game.SpawnVehicle('mower', vector3(-938.26, 330.35, 70.88), 279.86, function(vehicle)
		veh = vehicle
		SetPedIntoVehicle(playerId, vehicle, -1)
	end)

	startCount = true
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10000)
		if startCount and isPedDriven then
			points = points + 1
			ESX.ShowNotification("~g~Césped cortado. (" .. points .. ")")
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey("mower")) then
			local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6
			if speed > 5 then
				isPedDriven = true
			else
				isPedDriven = false
			end
		end
	end
end)

local blips = {
     {title="Cortar el césped", colour=2, id=735, x = -949.08, y = 332.99, z = 71.33},
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
