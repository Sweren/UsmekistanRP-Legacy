ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx_giveownedcar:spawnVehicle')
AddEventHandler('esx_giveownedcar:spawnVehicle', function(model, playerID, playerName, type)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	local carExist  = false

	ESX.Game.SpawnVehicle(model, coords, 0.0, function(vehicle) --get vehicle info
		if DoesEntityExist(vehicle) then
			carExist = true
			SetEntityVisible(vehicle, false, false)
			SetEntityCollision(vehicle, false)
			
			local newPlate     = exports.esx_vehicleshop:GeneratePlate()
			local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
			local carName = GetDisplayNameFromVehicleModel(vehicleProps.model)
			vehicleProps.plate = newPlate
			TriggerServerEvent('esx_giveownedcar:setVehicle', vehicleProps, playerID, carName)
			ESX.Game.DeleteVehicle(vehicle)	
			if type ~= 'console' then
				ESX.ShowNotification(_U('gived_car', model, newPlate, playerName))
			else
				local msg = ('addCar: ' ..model.. ', plate: ' ..newPlate.. ', toPlayer: ' ..playerName)
				TriggerServerEvent('esx_giveownedcar:printToConsole', msg)
			end				
		end		
	end)
	
	Wait(1000)
	if not carExist then
		if type ~= 'console' then
			ESX.ShowNotification(_U('unknown_car'))
		else
			TriggerServerEvent('esx_giveownedcar:printToConsole', "ERROR: unknown car")
		end		
	end
end)

RegisterNetEvent('esx_giveownedcar:spawnVehicle2')
AddEventHandler('esx_giveownedcar:spawnVehicle2', function(model, playerID, playerName, type)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	local carExist  = false

	ESX.Game.SpawnVehicle(model, coords, 0.0, function(vehicle) --get vehicle info
		if DoesEntityExist(vehicle) then
			carExist = true
			SetEntityVisible(vehicle, false, false)
			SetEntityCollision(vehicle, false)
			
			local newPlate     = exports.esx_vehicleshop:GeneratePlate()
			local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
			local carName = GetDisplayNameFromVehicleModel(vehicleProps.model)
			vehicleProps.plate = newPlate
			TriggerServerEvent('esx_giveownedcar:setVehicle2', vehicleProps, playerID, carName)
			ESX.Game.DeleteVehicle(vehicle)	

			ESX.ShowNotification(_U('gived_car', carName, newPlate, playerName))

				

			
		end		
	end)

	
	
	Wait(1000)
	if not carExist then
		if type ~= 'console' then
			ESX.ShowNotification(_U('unknown_car'))
		else
			TriggerServerEvent('esx_giveownedcar:printToConsole', "ERROR: unknown car")
		end		
	end
end)

RegisterNetEvent('esx_giveownedcar:spawnVehiclePlate')
AddEventHandler('esx_giveownedcar:spawnVehiclePlate', function(model, plate, playerID, playerName, type)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	local generatedPlate = string.upper(plate)
	local carExist  = false

	ESX.TriggerServerCallback('esx_vehicleshop:isPlateTaken', function (isPlateTaken)
		if not isPlateTaken then
			ESX.Game.SpawnVehicle(model, coords, 0.0, function(vehicle) --get vehicle info	
				if DoesEntityExist(vehicle) then
					carExist = true
					SetEntityVisible(vehicle, false, false)
					SetEntityCollision(vehicle, false)	
					
					local newPlate     = string.upper(plate)
					local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
					local carName = GetDisplayNameFromVehicleModel(vehicleProps.model)
					vehicleProps.plate = newPlate
					TriggerServerEvent('esx_giveownedcar:setVehicle', vehicleProps, playerID, carName)
					ESX.Game.DeleteVehicle(vehicle)
					if type ~= 'console' then
						ESX.ShowNotification(_U('gived_car',  model, newPlate, playerName))
					else
						local msg = ('addCar: ' ..model.. ', plate: ' ..newPlate.. ', toPlayer: ' ..playerName)
						TriggerServerEvent('esx_giveownedcar:printToConsole', msg)
					end				
				end
			end)
		else
			carExist = true
			if type ~= 'console' then
				ESX.ShowNotification(_U('plate_already_have'))
			else
				local msg = ('ERROR: this plate is already been used on another vehicle')
				TriggerServerEvent('esx_giveownedcar:printToConsole', msg)
			end					
		end
	end, generatedPlate)
	
	Wait(1000)
	if not carExist then
		if type ~= 'console' then
			ESX.ShowNotification(_U('unknown_car'))
		else
			TriggerServerEvent('esx_giveownedcar:printToConsole', "ERROR: unknown car")
		end		
	end	
end)

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/givecar', 'Give car with a random plate', {{ name="car", help="Name of the car model" },{ name="id", help="The ID of player (default is yourself)" }})
    TriggerEvent('chat:addSuggestion', '/givecarplate', 'Give car with custom plate', {{ name="car", help="Name of the car model" },{ name="plate", help="The car plate" },{ name="id", help="The ID of player (default is yourself)" }})
    TriggerEvent('chat:addSuggestion', '/delcarplate', 'Delete a owned car by plate', {{ name="plate", help="The car plate" }})
end)
