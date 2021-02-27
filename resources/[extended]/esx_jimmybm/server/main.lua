ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx_drugseller:buy')
AddEventHandler('esx_drugseller:buy', function(item, amount, money)
   local xPlayer = ESX.GetPlayerFromId(source)
   local moneys = xPlayer.getMoney()
   if moneys >= money then
   xPlayer.removeMoney(money)
   xPlayer.addInventoryItem(item, amount)
   TriggerClientEvent('esx:showNotification', source, 'You bought ' .. item .. ' for ' .. money .. '$')
   else 
    TriggerClientEvent('esx:showNotification', source, 'You dont have cash for this')
   end
end)