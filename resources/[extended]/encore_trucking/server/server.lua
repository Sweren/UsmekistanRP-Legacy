ESX = nil TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
--
-- Functions
--

function getMoney(playerId)
	-- Insert your framework's method here.
	local xPlayer = ESX.GetPlayerFromId(playerId)
    local userMoney = xPlayer.getMoney()

	return userMoney
end

function addMoney(playerId, amount)
	-- Insert your framework's method here.
	local xPlayer = ESX.GetPlayerFromId(playerId)
    xPlayer.addAccountMoney('money', amount)

	return true
end

function removeMoney(playerId, amount)
	-- Insert your framework's method here.
	local xPlayer = ESX.GetPlayerFromId(playerId)
    xPlayer.removeAccountMoney('money', amount)

	return true
end

--
-- Events
--

RegisterNetEvent('encore_trucking:loadDelivered')
AddEventHandler('encore_trucking:loadDelivered', function(totalRouteDistance)
	local playerId = source
	local payout   = math.floor(totalRouteDistance * Config.PayPerMeter)
	local pase = math.floor(totalRouteDistance * 0.005)

	addMoney(playerId, payout)

	TriggerClientEvent('encore_trucking:helper:showNotification', playerId, 'Has recibido ~g~$' .. payout .. '~s~ de comisión por tus entregas.')

	TriggerEvent("BattlePass-Server:AddXP", pase, playerId)
end)

RegisterNetEvent('encore_trucking:rentTruck')
AddEventHandler('encore_trucking:rentTruck', function()
	local playerId = source

	if getMoney(playerId) < Config.TruckRentalPrice then
		TriggerClientEvent('encore_trucking:helper:showNotification', playerId, 'No tienes suficiente dinero para rentar un camión.')
		return
	end

	removeMoney(playerId, Config.TruckRentalPrice)

	TriggerClientEvent('encore_trucking:startJob', playerId)
end)

RegisterNetEvent('encore_trucking:returnTruck')
AddEventHandler('encore_trucking:returnTruck', function()
	local playerId = source

	addMoney(playerId, Config.TruckRentalPrice)

	TriggerClientEvent('encore_trucking:helper:showNotification', playerId, 'Tu depósito de $' .. Config.TruckRentalPrice .. ' se te ha devuelto.')
end)