ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("alerts", function(source)
local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'police' then
        TriggerClientEvent("PoliceAlerts", source)
    else
        print("No eres policia")
    end
end, false)

NivelDeAlerta = 0

RegisterServerEvent('tevi_alerts:tac0')
AddEventHandler('tevi_alerts:tac0', function()
    NivelDeAlerta = 0
end)

RegisterServerEvent('tevi_alerts:tac1')
AddEventHandler('tevi_alerts:tac1', function()
    NivelDeAlerta = 1
end)

RegisterServerEvent('tevi_alerts:tac2')
AddEventHandler('tevi_alerts:tac2', function()
    NivelDeAlerta = 2
end)

RegisterServerEvent('tevi_alerts:tac3')
AddEventHandler('tevi_alerts:tac3', function()
    NivelDeAlerta = 3
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if NivelDeAlerta == 0 then
    	TriggerClientEvent('tevi_alerts:tac0_c', -1)
    elseif NivelDeAlerta == 1 then
    	TriggerClientEvent('tevi_alerts:tac1_c', -1)
    elseif NivelDeAlerta == 2 then
        TriggerClientEvent('tevi_alerts:tac2_c', -1)
    elseif NivelDeAlerta == 3 then
    	TriggerClientEvent('tevi_alerts:tac3_c', -1)    
    end
end
end)
