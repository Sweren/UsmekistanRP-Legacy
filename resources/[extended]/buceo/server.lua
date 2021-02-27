ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('diving_gear', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diving_gear', 1)

    TriggerClientEvent("qb-diving:client:UseGear", source, true)
end)

RegisterCommand('buceo', function(source, args, user)
    TriggerClientEvent("qb-diving:client:UseGear", source, false)
end, true)