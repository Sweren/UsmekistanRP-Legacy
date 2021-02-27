ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_matrixwash:withdraw')
AddEventHandler('esx_matrixwash:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	amount = tonumber(amount)
	local accountMoney = 0
	accountMoney = xPlayer.getAccount('black_money').money
	local device = xPlayer.getInventoryItem(Config.devicename).count
	if amount == nil or amount <= 0 or amount > accountMoney or device <= 0 then
		TriggerClientEvent('esx:showNotification', _source, (config.requirementmessage))
	else
		xPlayer.removeAccountMoney('black_money', amount)
		newamount = amount * Config.rate
		xPlayer.addMoney(newamount)
		TriggerClientEvent('esx:showNotification', _source, 'Tu lavaste $' .. newamount .. '~s~.')
		Wait(3000)
	  TriggerClientEvent('esx:showNotification', _source, 'Se te quito una comision del' .. Config.percent .. '._.' )
		crymore = math.random(1,100)
		if crymore > Config.losechance and Config.chancetolose then
		xPlayer.removeInventoryItem(Config.devicename)
		TriggerClientEvent('esx:showNotification', _source, Config.lostdevice)
		end
	end
end)

RegisterServerEvent('mapalert')
AddEventHandler('mapalert', function(x, y, z)
    local xPlayer  = ESX.GetPlayerFromId(source)
        TriggerClientEvent('bliplocale', -1, x, y, z)
end)

RegisterServerEvent('moneywashalert')
AddEventHandler('moneywashalert', function(street, vehicleLabel, plate)
    local xPlayer  = ESX.GetPlayerFromId(source)
			if vehicleLabel ~=nil then
      TriggerClientEvent("Cybernetic police", -1, "Cyber crimen detectado en: "..street.." vehiculo en camara: "..vehicleLabel.." Placa: "..plate )
		else
			TriggerClientEvent("Cybernetic police", -1, "Cyber crimen detectado en: "..street)
    end
end)
