--[[-----------------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
© Loaf Scripts 2020 All Rights Reserved
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--]]-----------------------------------

--[[------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SHARING THIS FILE IS ILLEGAL
!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--]]------------------------

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

GetMoney = function(src)
    local xPlayer = ESX['GetPlayerFromId'](src)
    local money = {}
    money['cash'] = xPlayer['getMoney']()
    money['bank'] = xPlayer['getAccount']('bank')['money']
    return money
end

RemoveMoney = function(src, type, amount)
    local xPlayer = ESX['GetPlayerFromId'](src) 
    if type == 'cash' then
        xPlayer['removeMoney'](amount)
    elseif type == 'bank' then
        xPlayer['removeAccountMoney']('bank', amount)
    end
end

Notify = function(src, message, messagetype, messagetimeout)
    TriggerClientEvent('pNotify:SendNotification', src, {
        text = (message),
        type = messagetype,
        timeout = (messagetimeout),
        layout = 'bottomCenter',
        queue = 'global'
    })
end