ESX		= nil
local	randomPay = {
	500, 1500 -- 1000$, 10000$ || 10000$, 25000$
}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('gift:playerGift')
AddEventHandler('gift:playerGift', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	math.randomseed(os.time())
    if xPlayer ~= nil then
		local _randomPay = math.random(1, 2)
		if _randomPay == 1 then
			_randomPay = math.random(500, 1500)
			xPlayer.addMoney(_randomPay)	
			--TR
			--TriggerClientEvent('esx:showNotification', xPlayer.source, "Tebrikler, oyunda 1 saat aktif olduğunuz için " .. _randomPay .. "$ ikramiyenizi aldınız.")
			--EN
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Gracias por permanecer una hora en la ciudad, " .. _randomPay .. "$ han sido depositados en tu cuenta.")
		else
			_randomPay = math.random(500, 1500)
			xPlayer.addMoney(_randomPay)
			--TR
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Gracias por permanecer una hora en la ciudad, " .. _randomPay .. "$ han sido depositados en tu cuenta.")
			--EN
			--TriggerClientEvent('esx:showNotification', xPlayer.source, "Congratulations for your active 1 hour in the game " .. _randomPay .. "$ you have received your bonus.")
		end
	end	
end)