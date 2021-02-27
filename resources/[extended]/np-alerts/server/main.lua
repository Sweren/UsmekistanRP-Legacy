ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_outlawalert:carJackInProgress')
AddEventHandler('esx_outlawalert:carJackInProgress', function(targetCoords, streetName, vehicleLabel, playerGender)
    if playerGender == 0 then playerGender = "M" else playerGender = "F" end
    mytype = 'police'
    data = {["code"] = '10-16', ["name"] = 'ROBO DE VEHÍCULO  '   ..vehicleLabel..  '.', ["loc"] = 'UBICACIÓN:  '..streetName}
    length = 6500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
    TriggerClientEvent('esx_outlawalert:combatInProgress', -1, targetCoords)
    TriggerClientEvent('esx_outlawalert:carJackInProgress', -1, targetCoords)
end, false)

RegisterServerEvent('esx_outlawalert:combatInProgress')
AddEventHandler('esx_outlawalert:combatInProgress', function(targetCoords, streetName, playerGender)
    if playerGender == 0 then playerGender = "(Masculino)" else playerGender = "(Femenino)" end
    
	mytype = 'police'
    data = {["code"] = '10-10', ["name"] = 'PELEA EN CURSO  '..playerGender, ["loc"] = 'UBICACIÓN:  '..streetName}
    length = 6500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
    TriggerClientEvent('esx_outlawalert:combatInProgress', -1, targetCoords)
end, false)

RegisterServerEvent('esx_outlawalert:gunshotInProgress')
AddEventHandler('esx_outlawalert:gunshotInProgress', function(targetCoords, streetName, playerGender)
    if playerGender == 0 then playerGender = "(Masculino)" else playerGender = "(Femenino)" end
	mytype = 'police'
    data = {["code"] = '10-11', ["name"] = 'TIROTEO EN CURSO  '..playerGender, ["loc"] = 'UBICACIÓN:  '..streetName}
    length = 6500
    TriggerClientEvent('esx_outlawalert:outlawNotify', -1, mytype, data, length)
    TriggerClientEvent('esx_outlawalert:gunshotInProgress', -1, targetCoords)
end, false)

ESX.RegisterServerCallback('esx_outlawalert:isVehicleOwner', function(source, cb, plate)
	local identifier = GetPlayerIdentifier(source, 0)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
		['@owner'] = identifier,
		['@plate'] = plate
	}, function(result)
		if result[1] then
			cb(result[1].owner == identifier)
		else
			cb(false)
		end
	end)
end)
