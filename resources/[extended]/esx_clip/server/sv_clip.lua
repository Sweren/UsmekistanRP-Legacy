ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)



RegisterServerEvent('esx_clip:remove')
AddEventHandler('esx_clip:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip', 1)
end)


RegisterServerEvent('esx_clip:giveAmmo')
AddEventHandler('esx_clip:giveAmmo', function(hash, ammo)
	local xPlayer = ESX.GetPlayerFromId(source)
	for k,v in pairs(Config.Weapons) do
		if (v.weaponHash == hash) then
			xPlayer.addWeaponAmmo(v.weaponName, ammo)

			xPlayer.removeInventoryItem('clip', 1)
			break
		else
			xPlayer.showNotification("Munición incompatible.")
		end
	end
end)

ESX.RegisterUsableItem('clip', function(source)
	TriggerClientEvent('esx_clip:clipcli', source)
end)

