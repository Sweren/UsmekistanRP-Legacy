ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("getJob")
AddEventHandler("getJob", function(source, cb)
     local _source = source
     local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer ~= nil then
     	local job = xPlayer.job.name
 	end

end)
--[[
function isMechanic(source, callback)
	local xPlayer = 
	and Playerjob.name == 'mechanic'
--]]
--Update Check


--Admin Check

RegisterServerEvent('VEM:CheckAdminStatus') --Just Don't Edit!
AddEventHandler('VEM:CheckAdminStatus', function()
	local IDs = GetPlayerIdentifiers(source)
	local Admins = LoadResourceFile(GetCurrentResourceName(), 'Admins.txt')
	local AdminsSplitted = stringsplit(Admins, '\n')
	for k, AdminID in pairs(AdminsSplitted) do
		local AdminID = AdminID:gsub(' ', '')
		local SingleAdminsSplitted = stringsplit(AdminID, ',')
		for _, ID in pairs(IDs) do
			if ID:lower() == SingleAdminsSplitted[1]:lower() or ID:lower() == SingleAdminsSplitted[2]:lower() or ID:lower() == SingleAdminsSplitted[3]:lower() then
				TriggerClientEvent('VEM:AdminStatusChecked', source, true); return
			end
		end
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(source) --Checks if Player is a ESMode Admin
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getGroup() == 'admin' or xPlayer.getGroup() == 'superadmin' then
		TriggerClientEvent('VEM:AdminStatusChecked', source, true)
	end
end)

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

