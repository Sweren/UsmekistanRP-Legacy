--================================================================================================
--==                                VARIABLES - DO NOT EDIT                                     ==
--================================================================================================
function sendToDiscord (name,message,color)
	--local DiscordWebHook = "https://discordapp.com/api/webhooks/715361818658340884/8wO3kL9mKqFNml3of4BN_3UTXiM1frGLDJdxj6n5ZTqOyVe_wZNCQHU8jcT00LHtK9mv"
	-- Modify here your discordWebHook username = name, content = message,embeds = embeds
  
  local embeds = {
	  {
		  ["title"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "URP",
		 },
	  }
  }
  
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end



ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local timer = 7200000
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








