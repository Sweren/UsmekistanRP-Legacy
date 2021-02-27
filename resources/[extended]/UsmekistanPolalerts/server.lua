ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('thiefInProgress')
AddEventHandler('thiefInProgress', function(street1, street2, veh, sex)
	if veh == "NULL" then
		TriggerClientEvent("outlawNotify", -1, "Robo de vehículos a través de "..sex.." | "..street1.." w "..street2)
	else
		TriggerClientEvent("outlawNotify", -1, "Robo de vehículos "..veh.."  przez "..sex.." | "..street1.." w "..street2)
	end
end)

RegisterServerEvent('thiefInProgressS1')
AddEventHandler('thiefInProgressS1', function(street1, veh, sex)
	if veh == "NULL" then
		TriggerClientEvent("outlawNotify", -1, "Robo de vehículos a través de "..sex.." | "..street1)
	else
		TriggerClientEvent("outlawNotify", -1, "Robo de vehículos "..veh.." por "..sex.." | "..street1)
	end
end)

RegisterServerEvent('thiefInProgressPolice')
AddEventHandler('thiefInProgressPolice', function(street1, street2, veh, sex)
	if veh == "NULL" then
		TriggerClientEvent("outlawNotify", -1, "Robo de un vehículo (oficial) por "..sex.." | "..street1.." en "..street2)
	else
		TriggerClientEvent("outlawNotify", -1, "Robo de vehículos (oficial) "..veh.."  mediante "..sex.." | "..street1.." en "..street2)
	end
end)

RegisterServerEvent('thiefInProgressS1Police')
AddEventHandler('thiefInProgressS1Police', function(street1, veh, sex)
	if veh == "NULL" then
		TriggerClientEvent("outlawNotify", -1, "Robo de un vehículo (oficial) por "..sex.." | "..street1)
	else
		TriggerClientEvent("outlawNotify", -1, "Robo de vehículos (oficial) "..veh.." mediante "..sex.." en "..street1)
	end
end)

RegisterServerEvent('meleeInProgress')
AddEventHandler('meleeInProgress', function(street1, street2, sex)
	TriggerClientEvent("outlawNotify", -1, "Comienza una pelea por "..sex.." | "..street1.." w "..street2)
end)

RegisterServerEvent('meleeInProgressS1')
AddEventHandler('meleeInProgressS1', function(street1, sex)
	TriggerClientEvent("outlawNotify", -1, "Empezar una pelea por "..sex.." | "..street1)
end)


RegisterServerEvent('gunshotInProgress')
AddEventHandler('gunshotInProgress', function(street1, street2, sex)
	TriggerClientEvent("outlawNotify", -1, " INTERVENCIÓN REQUERIDA | Los disparos fueron hechos por "..sex.." | Ubicación: "..street1.." - "..street2)
	--TriggerClientEvent("pNotify:SendNotification", -1, {text = "Oddano strzały przez "..sex.." | "..street1.." w "..street2})
end)

RegisterServerEvent('1013Poss')
AddEventHandler('1013Poss', function(street1, street2, sex)
	TriggerClientEvent("outlawNotifyFire", -1, " 10-20 | Ubicación: "..street1.." - "..street2)
	--TriggerClientEvent("pNotify:SendNotification", -1, {text = "Oddano strzały przez "..sex.." | "..street1.." w "..street2})
end)

RegisterServerEvent('wlamaniecar')
AddEventHandler('wlamaniecar', function(street1, street2, sex, plate, vehicleName)
	TriggerClientEvent("outlawNotify", -1, " INTERVENCIÓN REQUERIDA | Intento de intrusión en un vehículo de una clase "..vehicleName.." o numero de placa "..plate.." por "..sex.." | Ubicación: "..street1.." - "..street2)
	--TriggerClientEvent("pNotify:SendNotification", -1, {text = "Oddano strzały przez "..sex.." | "..street1.." w "..street2})
end)

RegisterServerEvent('gunshotInProgressS1')
AddEventHandler('gunshotInProgressS1', function(street1, sex)
	TriggerClientEvent("outlawNotify", -1, " INTERVENCIÓN REQUERIDA | Los disparos fueron hechos por "..sex.." | Ubicación: "..street1)
	--TriggerClientEvent("pNotify:SendNotification", -1, {text = "Oddano strzały przez "..sex.." | "..street1})
end)

RegisterServerEvent('1013Pos1')
AddEventHandler('1013Pos1', function(street1, sex)
	TriggerClientEvent("outlawNotifyFire", -1, " 10-20 | Ubicación: "..street1)
	--TriggerClientEvent("pNotify:SendNotification", -1, {text = "Oddano strzały przez "..sex.." | "..street1})
end)

RegisterServerEvent('wlamaniecarS1')
AddEventHandler('wlamaniecarS1', function(street1, sex, plate, vehicleName)
	TriggerClientEvent("outlawNotify", -1, " INTERVENCIÓN REQUERIDA | Intento de intrusión en un vehículo de una clase "..vehicleName.." o numero de placa "..plate.." por "..sex.." | Ubicacion: "..street1)
	--TriggerClientEvent("pNotify:SendNotification", -1, {text = "Oddano strzały przez "..sex.." | "..street1})
end)

RegisterServerEvent('thiefInProgressPos')
AddEventHandler('thiefInProgressPos', function(tx, ty, tz)
	TriggerClientEvent('thiefPlace', -1, tx, ty, tz)
end)

RegisterServerEvent('gunshotInProgressPos')
AddEventHandler('gunshotInProgressPos', function(gx, gy, gz)
	TriggerClientEvent('gunshotPlace', -1, gx, gy, gz)
end)

RegisterServerEvent('1013Pos')
AddEventHandler('1013Pos', function(gx, gy, gz)
	TriggerClientEvent('1013Place', -1, gx, gy, gz)
end)

RegisterServerEvent('wlamaniecarPos')
AddEventHandler('wlamaniecarPos', function(gx, gy, gz)
	TriggerClientEvent('wlamaniePlace', -1, gx, gy, gz)
end)

RegisterServerEvent('meleeInProgressPos')
AddEventHandler('meleeInProgressPos', function(mx, my, mz)
	TriggerClientEvent('meleePlace', -1, mx, my, mz)
end)

ESX.RegisterServerCallback('esx_outlawalert:ownvehicle',function(source,cb, vehicleProps)
	local isFound = false
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local vehicules = getPlayerVehicles(xPlayer.getIdentifier())
	local plate = vehicleProps.plate

		for _,v in pairs(vehicules) do
			if(plate == v.plate)then
				isFound = true
				break
			end
		end
		cb(isFound)
end)

function getPlayerVehicles(identifier)

	local vehicles = {}
	local data = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier",{['@identifier'] = identifier})
	for _,v in pairs(data) do
		local vehicle = json.decode(v.vehicle)
		table.insert(vehicles, {id = v.id, plate = vehicle.plate})
	end
	return vehicles
end

-- Wytrychy

ESX.RegisterUsableItem('blowpipe', function(source)
	KlientowyWytrych(source)
end)

RegisterServerEvent('route68_menu:Wytrych')
AddEventHandler('route68_menu:Wytrych', function()
	KlientowyWytrych(source)
end)

function KlientowyWytrych(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('blowpipe')

	if xItem.count >= 1 then
		xPlayer.removeInventoryItem('blowpipe', 1)

		TriggerClientEvent('esx_powiadomienia:onHijack', _source)
	else
		TriggerClientEvent('pNotify:SendNotification', source, {text = 'No tienes ninguna cerradura.!'})
	end
end

RegisterServerEvent('oddajWytrychDebilowi')
AddEventHandler('oddajWytrychDebilowi', function()
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem('blowpipe', 1)
end)

-- 10-13
RegisterCommand("1020", function(source, args, rawCommand)
	TriggerClientEvent('esx_powiadomienia:1013', source)
end)
