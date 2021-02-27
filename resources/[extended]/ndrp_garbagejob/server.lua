ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

RegisterNetEvent('ndrp-garbage:pay')
AddEventHandler('ndrp-garbage:pay', function(jobStatus)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if jobStatus then
        if xPlayer ~= nil then
            local randomMoney = math.random(900,1100)
            xPlayer.addMoney(randomMoney)
            local cash = xPlayer.getMoney()
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Has ganado $' ..randomMoney})
            TriggerClientEvent('banking:updateCash', _source, cash)
            TriggerEvent('garbagePay:logs',_source,xPlayer.getName(),randomMoney)
        end
    else
        print("Probably a cheater: ",xPlayer.getName())
    end
end)


RegisterNetEvent('ndrp-garbage:reward')
AddEventHandler('ndrp-garbage:reward', function(item,rewardStatus,label)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if rewardStatus then
        if xPlayer ~= nil then
            --if xPlayer.canCarryItem(item,1) then
                xPlayer.addInventoryItem(item,1)
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Has encontrado ' ..label})
                TriggerEvent('garbageRew:logs',_source,xPlayer.getName(),item)
           -- else
             --   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Has encontrado un objeto pero no lo puedes llevar'})
            --end
        end
    else
        print("Probably a cheater: ",xPlayer.getName())
    end
end)