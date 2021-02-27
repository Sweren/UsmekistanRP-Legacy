ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent("Ruby_IllShop:Buy")
AddEventHandler("Ruby_IllShop:Buy", function(prix, item, quantite)
     local xPlayer = ESX.GetPlayerFromId(source) 
     local xMoney = xPlayer.getMoney()
     if xMoney >= prix then
          xPlayer.addInventoryItem(item, quantite)
          xPlayer.removeMoney(prix)
          TriggerClientEvent('esx:showNotification', source, "~g~¡Compra ~w~realizada!")
     else
          TriggerClientEvent('esx:showNotification', source, "No tienes suficiente dinero, te falta: ~r~"..prix-xMoney.."$")
     end
end)