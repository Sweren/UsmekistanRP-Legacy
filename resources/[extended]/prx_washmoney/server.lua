ESX = nil



TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('prx_dineronegro:lavarDinero')
AddEventHandler('prx_dineronegro:lavarDinero', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	local accountMoney = 0

	
	
	accountMoney = xPlayer.getAccount('black_money').money
	
		if accountMoney < amount then
			notification('No tienes dinero suficiente / You dont have enought money')
			notification(_U('dont_have_money'))
			
		else
			xPlayer.removeAccountMoney('black_money', amount)
			xPlayer.addMoney(amount)
			notification('Has lavado: '..amount..'€ de dinero negro / You are wash: '..amount..'€ of black money')
			
			
			
		end
	
end)

function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end




