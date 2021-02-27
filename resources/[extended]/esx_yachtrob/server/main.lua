ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local cooldown = 0
local cooldowntime = 600 * 6000

function Timer()
	cooldown = 1
	Citizen.Wait(cooldowntime)
	cooldown = 0
end

RegisterServerEvent('route68_yacht_reb:robbery')
AddEventHandler('route68_yacht_reb:robbery', function(text)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local police = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			police = police+1
		end
	end
		if police > Config.LSPD-1 and cooldown == 0 then
			TriggerClientEvent("route68_yacht_reb:start", source)
			TriggerClientEvent("route68_yacht_reb:true", source)
			TriggerClientEvent("route68_yacht_reb:notification", source, _U('robbery_started'))
			LSPD()
			Citizen.Wait(1000)
			Timer()
		end

		if cooldown == 1 then
			TriggerClientEvent("route68_yacht_reb:notification", source, _U('robbed_recent'))
		end

		if police < Config.LSPD then
			TriggerClientEvent("route68_yacht_reb:notification", source, _U('police'))
		end
end)

RegisterServerEvent('route68_yacht_reb:reward')
AddEventHandler('route68_yacht_reb:reward', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.addMoney(math.random(Config.MinReward,Config.MaxReward))
end)

function LSPD()
	local _source = source
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		if xPlayer.job.name == 'police' then
			TriggerClientEvent("route68_yacht_reb:notify", -1)
		end
	end
end
