ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_unicornjob:buyItem')
AddEventHandler('esx_unicornjob:buyItem', function(itemName, price, itemLabel)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.getMoney() >= price then
       -- if xPlayer.canCarryItem(itemName, 1) then
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem(itemName, 1)
            TriggerClientEvent('esx:showNotification', _source, _U('bought') .. itemLabel)
        --else
          --TriggerClientEvent('esx:showNotification', _source, _U('max_item'))
        --end
    else
        TriggerClientEvent('esx:showNotification', _source, _U('not_enough'))
    end
end)



ESX.RegisterServerCallback('esx_unicornjob:getPlayerInventory', function(source, cb)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local items = xPlayer.inventory

  cb({items = items})
end)