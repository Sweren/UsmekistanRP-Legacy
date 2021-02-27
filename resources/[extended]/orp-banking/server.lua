ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('orp:bank:deposit')
AddEventHandler('orp:bank:deposit', function(amount)
    local _source = source
	
	local xPlayer = ESX.GetPlayerFromId(_source)
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
		TriggerClientEvent('orp:bank:notify', _source, "error", "Invalid Amount")
	else
		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', tonumber(amount))
		TriggerClientEvent('orp:bank:notify', _source, "success", "You successfully deposit $" .. amount)
	end
end)

RegisterServerEvent('orp:bank:withdraw')
AddEventHandler('orp:bank:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local min = 0
	amount = tonumber(amount)
	min = xPlayer.getAccount('bank').money
	if amount == nil or amount <= 0 or amount > min then
		TriggerClientEvent('orp:bank:notify', _source, "error", "Invalid Amount")
	else
		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('orp:bank:notify', _source, "success", "You successfully withdraw $" .. amount)
	end
end)

RegisterServerEvent('orp:bank:balance')
AddEventHandler('orp:bank:balance', function()
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	balance = xPlayer.getAccount('bank').money
	TriggerClientEvent('orp:bank:info', _source, balance)
end)

RegisterServerEvent('orp:bank:transfer')
AddEventHandler('orp:bank:transfer', function(to, amountt)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xTarget = ESX.GetPlayerFromId(to)
	local amount = amountt
	local balance = 0

	if(xTarget == nil or xTarget == -1) then
		TriggerClientEvent('orp:bank:notify', _source, "error", "Recipient not found")
	else
		balance = xPlayer.getAccount('bank').money
		zbalance = xTarget.getAccount('bank').money
		
		if tonumber(_source) == tonumber(to) then
			TriggerClientEvent('orp:bank:notify', _source, "error", "You cannot transfer money to yourself")
		else
			if balance <= 0 or balance < tonumber(amount) or tonumber(amount) <= 0 then
				TriggerClientEvent('orp:bank:notify', _source, "error", "You don't have enough money for this transfer")
			else
				xPlayer.removeAccountMoney('bank', tonumber(amount))
				xTarget.addAccountMoney('bank', tonumber(amount))
				TriggerClientEvent('orp:bank:notify', _source, "success", "You successfully transfer $" .. amount)
				TriggerClientEvent('orp:bank:notify', to, "success", "You have just received $" .. amount .. ' via transfer')
			end
		end
	end
end)

RegisterServerEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
	local _source = source
	
	local xPlayer = ESX.GetPlayerFromId(_source)
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
		TriggerClientEvent('bank:result', _source, "error", "Valor invalido.")
	else
		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', tonumber(amount))
		TriggerClientEvent('bank:result', _source, "success", "Dinero ha sido depositado")
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~y~Pago', '~y~Se le ha pagado: ~g~' .. amount .. "$", 'CHAR_BANK_MAZE', 1)
	end
end)










RegisterServerEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local base = 0
	amount = tonumber(amount)
	base = xPlayer.getAccount('bank').money
	if amount == nil or amount <= 0 or amount > base then
		TriggerClientEvent('bank:result', _source, "error", "Valor invalido")
	else
		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('bank:result', _source, "success", "Dinero retirado")
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~y~Pago', '~y~Pagado: ~g~' .. amount .. "$", 'CHAR_BANK_MAZE', 1)
	end
end)


RegisterServerEvent('bank:balance')
AddEventHandler('bank:balance', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	balance = xPlayer.getAccount('bank').money
	TriggerClientEvent('currentbalance1', _source, balance)
end)


RegisterServerEvent('bank:transfer')
AddEventHandler('bank:transfer', function(to, amountt)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local zPlayer = ESX.GetPlayerFromId(to)
	local xPlayer2 = ESX.GetPlayerFromId(source)
	local balance = 0

	if(zPlayer == nil or zPlayer == -1) then
		--TriggerClientEvent('bank:result', _source, "error", "Nie ma takiej osoby na wyspie!")
		TriggerClientEvent('bank:result', _source, "error", "ID Invalido!")
	else
		balance = xPlayer.getAccount('bank').money
		zbalance = zPlayer.getAccount('bank').money
		
		if tonumber(_source) == tonumber(to) then
			TriggerClientEvent('bank:result', _source, "error", "Cantidad invalida")
		else
			if balance <= 0 or balance < tonumber(amountt) or tonumber(amountt) <= 0 then
				TriggerClientEvent('bank:result', _source, "error", "No puedes enviar dinero si no lo tienes.")
			else
                
                TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~y~Transferencia', '~y~Transferido : ~g~' .. amountt .. "$" .. "\n~y~A cuenta # ~p~" .. to, 'CHAR_BANK_MAZE', 1)
                TriggerClientEvent('esx:showAdvancedNotification', to, 'Banco', '~y~Transferencia', '~y~Se ha recibido una transferencia de : ~g~' .. amountt .. "$" .. "\n~y~De la cuenta # ~p~" .. _source, 'CHAR_BANK_MAZE', 1)
				zPlayer.addAccountMoney('bank', tonumber(amountt))
				xPlayer2.removeAccountMoney('bank', tonumber(amountt))
				TriggerClientEvent('bank:result', _source, "success", "La transferencia ha sido enviada.")
			end
		end
	end
end)