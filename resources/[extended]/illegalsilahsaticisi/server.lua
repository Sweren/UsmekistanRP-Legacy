----------------------------------------
--Dev by Thom512#0990 for Patoche#4702--
----------------------------------------

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('weapon512:buyWeapon', function(source, cb, weaponName, price)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	if Config.ArgentSale then
		if xPlayer.getAccount('black_money').money >= price then
			xPlayer.removeAccountMoney('black_money', price)
			xPlayer.addWeapon(weaponName, 42)

			cb(true)
		else
			TriggerClientEvent('esx:showAdvancedNotification', _source, "Vendedor de Armas", "", "No tienes suficiente dinero sucio" , "CHAR_MP_MERRYWEATHER", 1)
			cb(false)
		end
	else
		if xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)
			xPlayer.addWeapon(weaponName, 42)

			cb(true)
		else
			TriggerClientEvent('esx:showAdvancedNotification', _source, "Vendedor de Armas", "", "no tienes suficiente dinero" , "CHAR_MP_MERRYWEATHER", 1)
			cb(false)
		end
	end
end)