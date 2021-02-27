ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--give car with a random plate- 1: carModel (2: playerID)
TriggerEvent('es:addGroupCommand', 'giveplane', 'admin', function(source, args, user)
	if args[2] ~= nil then
		local playerName = GetPlayerName(args[2])
		TriggerClientEvent('esx_giveownedboat:spawnVehicle',source,args[1],args[2],playerName,'player')
	else
		local sourceID = source
		local playerName = GetPlayerName(sourceID)
		TriggerClientEvent('esx_giveownedboat:spawnVehicle',source,args[1],sourceID,playerName,'player')
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Give car with a random plate', params = {{name = "car", help = 'Name of the car model'}, {name = "id", help = 'The ID of player (default is yourself)'}}})

--[[
RegisterCommand('givecar', function(source, args, user)
	if args[2] ~= nil then
		local playerName = GetPlayerName(args[2])
		TriggerClientEvent('esx_giveownedboat:spawnVehicle',source,args[1],args[2],playerName,'player')
	else
		local sourceID = source
		local playerName = GetPlayerName(sourceID)
		TriggerClientEvent('esx_giveownedboat:spawnVehicle',source,args[1],sourceID,playerName,'player')
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Give car with a random plate', params = {{name = "car", help = 'Name of the car model'}, {name = "id", help = 'The ID of player (default is yourself)'}}})
--]]


RegisterCommand('_giveboat', function(source, args)
    if source == 0 then		
		if args[2] ~= nil then
			local sourceID = args[2]
			local playerName = GetPlayerName(sourceID)
			TriggerClientEvent('esx_giveownedboat:spawnVehicle',sourceID,args[1],args[2],playerName,'console')			
		else
			print('ERROR: you need type playerID')			
		end				
	end
end)
--[[
RegisterCommand('givecar', function(source, args)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerGroup = xPlayer.getGroup()

	if playerGroup == 'admin' or 'superadmin' then
	    if source == 0 then		
			if args[2] ~= nil then
				local sourceID = args[2]
				local playerName = GetPlayerName(sourceID)
				TriggerClientEvent('esx_giveownedboat:spawnVehicle',sourceID,args[1],args[2],playerName,'console')			
			else
				print('ERROR: you need type playerID')			
			end				
		end
	end
end)
--]]

RegisterServerEvent('esx_giveownedboat:printToConsole')
AddEventHandler('esx_giveownedboat:printToConsole', function(msg)
	print(msg)
end)

--give car with custom plate- 1: carModel 2: plate (3: playerID)
TriggerEvent('es:addGroupCommand', 'givecarplate', 'admin', function(source, args, user)
	if args[1] == nil then
		TriggerClientEvent('esx:showNotification', source, '~r~/givecarplate [carModel] [plate] [playerID]')
	else
		if args[2] == nil then
			TriggerClientEvent('esx:showNotification', source, _U('none_plate'))
		else
			if args[3] ~= nil then
				local playerName = GetPlayerName(args[3])
				TriggerClientEvent('esx_giveownedboat:spawnVehiclePlate',source,args[1],args[2],args[3],playerName,'player')
			else
				local sourceID = source
				local playerName = GetPlayerName(sourceID)
				TriggerClientEvent('esx_giveownedboat:spawnVehiclePlate',source,args[1],args[2],sourceID,playerName,'player')
			end
		end
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Give car with custom plate', params = {{name = "car", help = 'Name of the car model'}, {name = "plate", help = 'The car plate'}, {name = "id", help = 'The ID of player (default is yourself)'}}})

RegisterCommand('_giveplaneplate', function(source, args)
    if source == 0 then	
		if args[1] == nil then
			print('ERROR: _givecar [carModel] [plate] [playerID]')
		else
			if args[2] == nil then
				print('ERROR: you need type car plate')
			else
				if args[3] ~= nil then
					local sourceID = args[3]
					local playerName = GetPlayerName(sourceID)
					TriggerClientEvent('esx_giveownedboat:spawnVehiclePlate',sourceID,args[1],args[2],args[3],playerName,'console')
				else
					print('ERROR: you need type playerID')
				end
			end		
		end
	end
end)

RegisterServerEvent('esx_giveownedboat:setVehicle')
AddEventHandler('esx_giveownedboat:setVehicle', function (vehicleProps, playerID)
	local _source = playerID
	local xPlayer = ESX.GetPlayerFromId(_source)


	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, model) VALUES (@owner, @plate, @vehicle, @type, @model)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps),
		['@type'] = 'boat',
		['@model']   = vehicleProps.model
		--['@stored']  = true
	}, function ()
		if Config.ReceiveMsg then
			TriggerClientEvent('esx:showNotification', _source, _U('received_car', string.upper(vehicleProps.plate)))
		end
	end)
end)


--delete car by plate
TriggerEvent('es:addGroupCommand', 'delcarplate', 'admin', function(source, args, user)	
	MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = args[1]
	})
	TriggerClientEvent('esx:showNotification', source, _U('del_car', args[1]))
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Delete a owned car by plate', params = {{name = "plate", help = 'The car plate'}}})

RegisterCommand('_delcarplate', function(source, args)
    if source == 0 then
		MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {
			['@plate'] = args[1]
		})
		print('Deleted Car Plate: ' ..args[1])
	end
end)



function havePermission(xPlayer, exclude)	-- you can exclude rank(s) from having permission to specific commands 	[exclude only take tables]
	if exclude and type(exclude) ~= 'table' then exclude = nil;print("^3[esx_admin] ^1ERROR ^0exclude argument is not table..^0") end	-- will prevent from errors if you pass wrong argument

	local playerGroup = xPlayer.getGroup()
	for k,v in pairs(Config.adminRanks) do
		if v == playerGroup then
			if not exclude then
				return true
			else
				for a,b in pairs(exclude) do
					if b == v then
						return false
					end
				end
				return true
			end
		end
	end
	return false
end
