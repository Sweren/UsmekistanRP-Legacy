ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- Weapon Box
ESX.RegisterUsableItem('weabox', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:weabox', source)
end)

RegisterNetEvent('esx_extraitems:removeweabox')
AddEventHandler('esx_extraitems:removeweabox', function(hash, ammo)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local weaponName = ESX.GetWeaponFromHash(hash)
	xPlayer.addWeaponAmmo(weaponName.name, ammo)

	if Config.Removeables.WeaponClip then
		xPlayer.removeInventoryItem('weabox', 1)
	end
end)

-- Weapon Clip
ESX.RegisterUsableItem('weaclip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:weaclip', source)
end)

RegisterNetEvent('esx_extraitems:removeweaclip')
AddEventHandler('esx_extraitems:removeweaclip', function(hash, ammo)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local weaponName = ESX.GetWeaponFromHash(hash)
	xPlayer.addWeaponAmmo(weaponName.name, ammo)

	if Config.Removeables.WeaponClip then
		xPlayer.removeInventoryItem('weaclip', 1)
	end
end)



ESX.RegisterUsableItem('radio', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
  	TriggerClientEvent('Radio.Set', source, true)
	TriggerClientEvent('Radio.Toggle', source)
        -- xPlayer.removeInventoryItem('radio', 1)
end)