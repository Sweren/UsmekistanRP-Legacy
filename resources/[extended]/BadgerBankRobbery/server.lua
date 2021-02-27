-------------------------
--- BadgerBankRobbery ---
-------------------------
--- Server ---
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

robberyActive = false
RegisterNetEvent('BadgerBankRobbery:IsActive')
AddEventHandler('BadgerBankRobbery:IsActive', function()
	-- Check if active or not
	if robberyActive then
		-- One is active
		TriggerClientEvent('BadgerBankRobbery:IsActive:Return', source, true)
	else
		-- One is not active
		TriggerClientEvent('BadgerBankRobbery:IsActive:Return', source, false)
	end
end)

ESX.RegisterServerCallback("BadgerBankRobbery:fetchCops", function(source, callback)
	local players = ESX.GetPlayers()

	local policeMen = 0

	for index, player in ipairs(players) do
		local player = ESX.GetPlayerFromId(player)

		if player then
			if player["job"]["name"] == "police" then
				policeMen = policeMen + 1
			end
		end
	end

	callback(policeMen >= 4)
end)

RegisterNetEvent('BadgerBankRobbery:SetActive')
AddEventHandler('BadgerBankRobbery:SetActive', function(bool)
	robberyActive = bool
	if bool then
		Wait((1000 * 60 * config.robberyCooldown)) -- Wait 15 minutes
		robberyActive = false
	end
end)

RegisterNetEvent('Print:PrintDebug')
AddEventHandler('Print:PrintDebug', function(msg)
	print(msg)
	TriggerClientEvent('chatMessage', -1, "^7[^1Badger's Scripts^7] ^1DEBUG ^7" .. msg)
end)

RegisterNetEvent('PrintBR:PrintMessage')
AddEventHandler('PrintBR:PrintMessage', function(msg)
	TriggerClientEvent('chatMessage', -1, msg)
end)

RegisterNetEvent('BadgerBankRobbery:SilantroPago')
AddEventHandler('BadgerBankRobbery:SilantroPago', function(reward)
	--print("robado")
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addAccountMoney('black_money', reward)

	TriggerEvent("BattlePass-Server:AddXP", 400, source)
	--print("robado2")
end)

