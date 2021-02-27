ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Give car with a random plate- 1: carModel (2: playerID)
RegisterCommand("givecar", function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
	if source ~= 0 then
		if havePermission(xPlayer) then
			if args[2] ~= nil then
				local playerName = GetPlayerName(args[2])
				TriggerClientEvent('esx_giveownedcar:spawnVehicle',source,args[1],args[2],playerName,'player')

				local ids = ExtractIdentifiers(source)
				local ids2 = ExtractIdentifiers(args[2])
				local playerName2 = GetPlayerName(source)
				TriggerEvent('Usmekistan:DiscordLog2', "Alerta de Autocalvo Corrupto", "Vehículo dado\n᲼᲼᲼᲼᲼᲼\n**Usuario Origen:** "..playerName2.."\n **Usuario Destino: **"..playerName.."\n**Steam ID:** "..ids2.steam.." \n**Vehículo:** "..args[1].."\n᲼᲼᲼᲼᲼᲼",16776960)		

			else
				local sourceID = source
				local playerName = GetPlayerName(sourceID)
				local ids = ExtractIdentifiers(sourceID)
				TriggerClientEvent('esx_giveownedcar:spawnVehicle',source,args[1],sourceID,playerName,'player')	
				TriggerEvent('Usmekistan:DiscordLog2', "Alerta de Autocalvo Corrupto", "Vehículo dado\n᲼᲼᲼᲼᲼᲼\n**Usuario Origen:** "..playerName.."\n **Usuario Destino: **"..playerName.."\n**Steam ID:** "..ids.steam.." \n**Vehículo:** "..args[1].."\n᲼᲼᲼᲼᲼᲼",16776960)		
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
		end
	end
end, false)


RegisterCommand('_givecar', function(source, args)
    if source == 0 then		
		if args[2] ~= nil then
			local sourceID = args[2]
			local playerName = GetPlayerName(sourceID)
			TriggerClientEvent('esx_giveownedcar:spawnVehicle',sourceID,args[1],args[2],playerName,'console')			
		else
			print('ERROR: you need type playerID')			
		end				
	end
end)

-- Give car with custom plate- 1: carModel 2: plate (3: playerID)
--[[ RegisterCommand("givecarplate", function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
	if source ~= 0 then
		if havePermission(xPlayer) then
			if args[1] == nil then
				TriggerClientEvent('esx:showNotification', source, '~r~/givecarplate [carModel] [plate] [playerID]')
			else
				if args[2] == nil then
					TriggerClientEvent('esx:showNotification', source, _U('none_plate'))
				else
					if args[3] ~= nil then
						local playerName = GetPlayerName(args[3])
						TriggerClientEvent('esx_giveownedcar:spawnVehiclePlate',source,args[1],args[2],args[3],playerName,'player')
					else
						local sourceID = source
						local playerName = GetPlayerName(sourceID)
						TriggerClientEvent('esx_giveownedcar:spawnVehiclePlate',source,args[1],args[2],sourceID,playerName,'player')
					end
				end
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
		end
	end
end, false) ]]

RegisterCommand('_givecarplate', function(source, args)
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
					TriggerClientEvent('esx_giveownedcar:spawnVehiclePlate',sourceID,args[1],args[2],args[3],playerName,'console')
				else
					print('ERROR: you need type playerID')
				end
			end		
		end
	end
end)

-- Delete car by plate
RegisterCommand("delcarplate", function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
	if source ~= 0 then
		if havePermission(xPlayer) then
			MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {['@plate'] = args[1]})
			TriggerClientEvent('esx:showNotification', source, _U('del_car', args[1]))
			local playerName = GetPlayerName(source)
			local ids = ExtractIdentifiers(source)
			TriggerEvent('Usmekistan:DiscordLog2', "Alerta de Autocalvo Corrupto", "Placa eliminada\n᲼᲼᲼᲼᲼᲼\n**Usuario:** "..playerName.."\n**Steam ID:** "..ids.steam.." \n**Placa:** "..args[1].."\n᲼᲼᲼᲼᲼᲼",	16711680)		
		end
	end
end, false)


RegisterCommand('_delcarplate', function(source, args)
    if source == 0 then
		MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {
			['@plate'] = args[1]
		})
		print('Deleted Car Plate: ' ..args[1])
	end
end)

RegisterServerEvent('esx_giveownedcar:setVehicle')
AddEventHandler('esx_giveownedcar:setVehicle', function (vehicleProps, playerID, carName)
	local _source = playerID
	local xPlayer = ESX.GetPlayerFromId(_source)
	local carName = carName

	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, stored, model) VALUES (@owner, @plate, @vehicle, @stored, @model)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps),
		['@stored']  = 1,
		['@model'] = carName
	}, function ()
		if Config.ReceiveMsg then
			TriggerClientEvent('esx:showNotification', _source, _U('received_car', string.upper(vehicleProps.plate)))
		end
	end)
end)

RegisterServerEvent('esx_giveownedcar:setVehicle2')
AddEventHandler('esx_giveownedcar:setVehicle2', function (vehicleProps, playerID, carName)
	local _source = playerID
	local xPlayer = ESX.GetPlayerFromId(_source)
	local carName = carName
	local user = GetPlayerName(_source)

	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, stored, model) VALUES (@owner, @plate, @vehicle, @stored, @model)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps),
		['@stored']  = 1,
		['@model'] = carName
	}, function ()
		if Config.ReceiveMsg then
			TriggerClientEvent('esx:showNotification', _source, _U('received_car', string.upper(vehicleProps.plate)))
		end

		
	end)
end)

RegisterServerEvent('esx_giveownedcar:printToConsole')
AddEventHandler('esx_giveownedcar:printToConsole', function(msg)
	print(msg)
end)

-- Code taken from esx_adminplus. Thanks to ali_exacute
function havePermission(xPlayer, exclude)	-- you can exclude rank(s) from having permission to specific commands 	[exclude only take tables]
	if exclude and type(exclude) ~= 'table' then exclude = nil;print("^3[esx_giveownedcar] ^1ERROR ^0exclude argument is not table..^0") end	-- will prevent from errors if you pass wrong argument

	local playerGroup = xPlayer.getGroup()
	for k,v in pairs(Config.AuthorizedRanks) do
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




function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end