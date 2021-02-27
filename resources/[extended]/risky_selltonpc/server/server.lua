ESX = nil
local TCE = TriggerClientEvent
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('risky_selltonpc:dodeal')
AddEventHandler('risky_selltonpc:dodeal', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local item1 = xPlayer.getInventoryItem(Risky.I1.Item).count
	local item2 = xPlayer.getInventoryItem(Risky.I2.Item).count
	local item3 = xPlayer.getInventoryItem(Risky.I3.Item).count
	local item4 = xPlayer.getInventoryItem(Risky.I4.Item).count
	if item1 >= 1 and xPlayer ~= nil then
		local item1amount = Risky.I1.Count

		local item1final = item1amount * Risky.I1.Price

		TCE('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Has vendido ' .. item1amount .. 'x Marihuana por $' .. item1final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.I1.Item, item1amount)
		xPlayer.addAccountMoney(Risky.I1.Acc, item1final)

	elseif item2 > 1 and xPlayer ~= nil then	
		local item2amount = Risky.I2.Count
	
		local item2final = item2amount * Risky.I2.Price
	
		TCE('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Has vendido ' .. item2amount .. 'x 2C por $' .. item2final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.I2.Item, item2amount)
		xPlayer.addAccountMoney(Risky.I2.Acc, item2final)

	elseif item3 > 1 and xPlayer ~= nil then
		local item3amount = Risky.I3.Count
	
		local item3final = item3amount * Risky.I3.Price
	
		TCE('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Has vendido ' .. item3amount .. 'x Metanfetamina por $' .. item3final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.I3.Item, item3amount)
		xPlayer.addAccountMoney(Risky.I3.Acc, item3final)

	elseif item4 > 1 and xPlayer ~= nil then
		local item4amount = Risky.I4.Count
	
		local item4final = item4amount * Risky.I4.Price
	
		TCE('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Has vendido ' .. item4amount .. 'x Heroína por $' .. item4final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.I4.Item, item4amount)
		xPlayer.addAccountMoney(Risky.I4.Acc, item4final)
	elseif item1 and item2 and item3 and item4 < 1 and xPlayer ~= nil then
		TCE('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Regrese cuando esté listo para convertirse en un verdadero traficante de drogas, tal vez la próxima vez traiga drogas con usted.', length = 4000 })
	end
end)

RegisterNetEvent('countdrug')
AddEventHandler('countdrug', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		local item1 = xPlayer.getInventoryItem(Risky.I1.Item).count
		local item2 = xPlayer.getInventoryItem(Risky.I2.Item).count
		local item3 = xPlayer.getInventoryItem(Risky.I3.Item).count
		local item4 = xPlayer.getInventoryItem(Risky.I4.Item).count
		if item1 >= 1 then
			TCE("confirmcount", source, true)
		elseif item2 >= 1 then
			TCE("confirmcount", source, true)
		elseif item3 >= 1 then
			TCE("confirmcount", source, true)
		elseif item4 >= 1 then
			TCE("confirmcount", source, true)
		else
			TCE("confirmcount", source, false)
		end
	end
end)

--[[
ESX.RegisterUsableItem('weed', function(source)
        
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 166000)
	TriggerClientEvent('esx_status:remove', _source, 'stress', 199000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('joint', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('joint', 1)

	TriggerClientEvent('esx_status:remove', _source, 'stress', 199000)
	TriggerClientEvent('esx_drugeffects:onJoint', source)
end)

ESX.RegisterUsableItem('heroin', function(source)
   
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('heroin', 1)

	TriggerClientEvent('esx_status:add', _source, 'heroin', 249000)
	TriggerClientEvent('esx_drugeffects:onOpium', source)
end)

ESX.RegisterUsableItem('meth', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('meth', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 333000)
	TriggerClientEvent('esx_drugeffects:onMeth', source)
end)

ESX.RegisterUsableItem('coke', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('coke', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 499000)
	TriggerClientEvent('esx_drugeffects:onCoke', source)
end)

ESX.RegisterUsableItem('xanax', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('xanax', 1)

	TriggerClientEvent('esx_status:remove', _source, 'drug', 249000)
end)
]]--
