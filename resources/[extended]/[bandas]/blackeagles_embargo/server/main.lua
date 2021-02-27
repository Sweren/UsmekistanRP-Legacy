ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Make sure all Vehicles are Stored on restart
MySQL.ready(function()
	if Config.ParkVehicles then
		ParkVehicles()
	else
		print('embargo: Parking Vehicles on restart is currently set to false.')
	end
end)

function ParkVehicles()
	MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE `stored` = @stored', {
		['@stored'] = false
	}, function(rowsChanged)
		if rowsChanged > 0 then
			print(('embargo: %s vehicle(s) have been stored!'):format(rowsChanged))
		end
	end)
end

-- Add Command for Getting Properties
if Config.UseCommand then
	ESX.RegisterCommand('getgarages', 'user', function(xPlayer, args, showError)
		xPlayer.triggerEvent('embargo:getPropertiesC')
	end, true, {help = 'Get Private Garages', validate = false})
end

-- Add Print Command for Getting Properties
RegisterServerEvent('embargo:printGetProperties')
AddEventHandler('embargo:printGetProperties', function()
	print('Getting Properties')
end)

-- Get Owned Properties
ESX.RegisterServerCallback('embargo:getOwnedProperties', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local properties = {}

	MySQL.Async.fetchAll('SELECT * FROM owned_properties WHERE owner = @owner', {
		['@owner'] = xPlayer.identifier
	}, function(data)
		for _,v in pairs(data) do
			table.insert(properties, v.name)
		end
		cb(properties)
	end)
end)


ESX.RegisterServerCallback('embargo:getOwnedCars', function(source, cb)
	local ownedCars = {}
	local xPlayer = ESX.GetPlayerFromId(source)

	if Config.ShowVehicleLocation then
		MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE embargo = @embargo', { -- job = NULL
			['@embargo'] = true,
		}, function(data)
			for _,v in pairs(data) do
				local vehicle = json.decode(v.vehicle)
				table.insert(ownedCars, {vehicle = vehicle, stored = v.stored, plate = v.plate})
			end
			cb(ownedCars)
		end)
	else
		MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE embargo = @embargo', { -- job = NULL
			['@embargo'] = true,
		}, function(data)
			for _,v in pairs(data) do
				local vehicle = json.decode(v.vehicle)
				table.insert(ownedCars, {vehicle = vehicle, stored = v.stored, plate = v.plate})
			end
			cb(ownedCars)
		end)
	end
end)

ESX.RegisterServerCallback('embargo:getOutOwnedCarsImpound', function(source, cb)
	local ownedCars = {}
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND Type = @Type AND `stored` = @stored', { -- job = NULL
		['@owner'] = xPlayer.identifier,
		['@Type'] = 'car',
		--['@job'] = 'taxi',
		['@stored'] = false
	}, function(data) 
		for _,v in pairs(data) do
			local vehicle = json.decode(v.vehicle)
			table.insert(ownedCars, vehicle)
		end
		cb(ownedCars)
	end)
end)


ESX.RegisterServerCallback('embargo:getOutOwnedCars', function(source, cb)
	local ownedCars = {}
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE embargo = @embargo', { -- job = NULL
		['@embargo'] = false,
	}, function(data) 
		for _,v in pairs(data) do
			local vehicle = json.decode(v.vehicle)
			table.insert(ownedCars, vehicle)
		end
		cb(ownedCars)
	end)
end)

ESX.RegisterServerCallback('embargo:checkMoneyCars', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= Config.CarPoundPrice then
		cb(true)
	else
		cb(false)
	end
end)

RegisterServerEvent('embargo:payCar')
AddEventHandler('embargo:payCar', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(Config.CarPoundPrice)
	TriggerClientEvent('esx:showNotification', source, _U('you_paid') .. Config.CarPoundPrice)

	if Config.GiveSocietyMoney then
		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
			account.addMoney(Config.CarPoundPrice)
		end)
	end
end)
-- End of Car Code

-- Store Vehicles
ESX.RegisterServerCallback('embargo:storeVehicle', function (source, cb, vehicleProps)
	local ownedCars = {}
	local vehplate = vehicleProps.plate:match("^%s*(.-)%s*$")
	local vehiclemodel = vehicleProps.model
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE @plate = plate', {
		['@plate'] = vehicleProps.plate
	}, function (result)
		if result[1] ~= nil then
			local originalvehprops = json.decode(result[1].vehicle)
			if originalvehprops.model == vehiclemodel then
				MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle, embargo=true WHERE plate = @plate', {
					['@vehicle'] = json.encode(vehicleProps),
					['@plate'] = vehicleProps.plate,
				}, function (rowsChanged)
					if rowsChanged == 0 then
						print(('embargo: %s attempted to store an vehicle they don\'t own!'):format(xPlayer.identifier))
					end
					cb(true)
				end)
			else
				if Config.KickPossibleCheaters == true then
					if Config.UseCustomKickMessage == true then
						print(('embargo: %s attempted to Cheat! Tried Storing: ' .. vehiclemodel .. '. Original Vehicle: ' .. originalvehprops.model):format(xPlayer.identifier))

						DropPlayer(source, _U('custom_kick'))
						cb(false)
					else
						print(('embargo: %s attempted to Cheat! Tried Storing: ' .. vehiclemodel .. '. Original Vehicle: ' .. originalvehprops.model):format(xPlayer.identifier))

						DropPlayer(source, 'You have been Kicked from the Server for Possible Garage Cheating!!!')
						cb(false)
					end
				else
					print(('embargo: %s attempted to Cheat! Tried Storing: ' .. vehiclemodel .. '. Original Vehicle: '.. originalvehprops.model):format(xPlayer.identifier))
					cb(false)
				end
			end
		else
			print(('embargo: %s attempted to store an vehicle they don\'t own!'):format(xPlayer.identifier))
			cb(false)
		end
	end)
end)

-- Pay to Return Broken Vehicles
RegisterServerEvent('embargo:payhealth')
AddEventHandler('embargo:payhealth', function(price)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', source, _U('you_paid') .. price)

	if Config.GiveSocietyMoney then
		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
			account.addMoney(price)
		end)
	end
end)

-- Modify State of Vehicles
RegisterServerEvent('embargo:setVehicleState')
AddEventHandler('embargo:setVehicleState', function(plate, state)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = @stored, embargo=@embargo WHERE plate = @plate', {
		['@stored'] = state,
		['@embargo'] = state,
		['@plate'] = plate
	}, function(rowsChanged)
		if rowsChanged == 0 then
			print(('embargo: %s exploited the garage!'):format(xPlayer.identifier))
		end
	end)
end)
