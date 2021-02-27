ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

local CopsConnected  = 0

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'taxi' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(120 * 1000, CountCops)
end

CountCops()

ESX.RegisterServerCallback('fs_taxi:count', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	cb(CopsConnected)
end)

RegisterServerEvent('fs_taxi:payCab')
AddEventHandler('fs_taxi:payCab', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

		if xPlayer.getAccount('money').money >= 500 then
			TriggerClientEvent('esx:showNotification', source, 'Pagaste $500 por el servicio de Uber.')
			xPlayer.removeAccountMoney('money', 500)
			TriggerClientEvent('CashMeOutside', source, true)
		else
			TriggerClientEvent('CashMeOutside', source, false)
		end
end)

RegisterCommand('uber', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

		if xPlayer.getAccount('money').money >= 500 then
			TriggerClientEvent('fs_taxi:start', source)
		else
			TriggerClientEvent('esx:showNotification', source, 'No tienes suficiente dinero para pagar.')
		end
	
end)
