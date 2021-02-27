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

MySQL['ready'](function()
    if Config['ResetState'] then
        MySQL['Async']['execute']('UPDATE owned_vehicles SET state=@state', {
            ['@state'] = false
        })
    end
end)

RegisterServerEvent('loaf_garage:impound')
AddEventHandler('loaf_garage:impound', function(vehicleSpawn)
    local xPlayer = ESX['GetPlayerFromId'](source)
    MySQL['Async']['fetchAll']('SELECT * FROM owned_vehicles WHERE owner=@identifier AND state=true AND storedhouse=false AND type=@type', {
        ['@identifier'] = xPlayer['identifier'],
        ['@type'] = 'car'
    }, function(result)
        local impounded = {}
        for k, v in pairs(result) do
            if Config['ShowJobVehicles'] then
                table.insert(impounded, v)
            else
                if v['job'] == 'civ' then
                    table.insert(impounded, v)
                end
            end
        end
        TriggerClientEvent('loaf_garage:viewImpounded', xPlayer['source'], vehicleSpawn, impounded)
    end)
end)

RegisterServerEvent('loaf_garage:notify')
AddEventHandler('loaf_garage:notify', function(text, type, time)
    Notify(source, text, type, time)
end)

RegisterServerEvent('esx_garage:viewVehicles')
AddEventHandler('esx_garage:viewVehicles', function(coords, heading, garage)
    local src = source
	local xPlayer = ESX['GetPlayerFromId'](src)
	local vehicles = {}

    if not garage then 
        garage = 'custom' 
    end

    Notify(src, Strings['fetching'], 'error', 1000)

    MySQL['Async']['fetchAll']('SELECT * FROM owned_vehicles WHERE owner=@identifier AND type=@type', {
        ['@identifier'] = xPlayer['identifier'],
        ['@type'] = 'car'
    }, function(result) 
        for k, v in pairs(result) do
            if Config['ShowJobVehicles'] then
                if Config['IndependentGarage'] then
                    if v['garage'] == garage then
                        table.insert(vehicles, v)
                    end
                else
                    table.insert(vehicles, v)
                end
            else
                if v['job'] == 'civ' then
                    if Config['IndependentGarage'] then
                        if v['garage'] == garage then
                            table.insert(vehicles, v)
                        end
                    else
                        table.insert(vehicles, v)
                    end
                end
            end
        end

        if #vehicles >= 1 then
            if json.decode(vehicles[1]['vehicle'])['model'] then
                TriggerClientEvent('loaf_garage:view', src, vehicles, coords, heading, garage)
            else
                Notify(src, Strings['no_vehicle'], 'error', 1500)
            end
        else
            Notify(src, Strings['no_vehicle'], 'error', 1500)
        end

	end)
end)

ESX['RegisterServerCallback']('loaf_garage:retrieve', function(source, cb, plate)
    local xPlayer = ESX['GetPlayerFromId'](source)

    local money, enough = GetMoney(xPlayer['source']), false
    if money['cash'] >= Config['ImpoundPrice'] then
        enough = true
        RemoveMoney(xPlayer['source'], 'cash', Config['ImpoundPrice'])
    else
        if money['bank'] >= Config['ImpoundPrice'] then
            enough = true
            RemoveMoney(xPlayer['source'], 'bank', Config['ImpoundPrice'])
        end
    end

    if enough then
        MySQL['Async']['fetchAll']('SELECT * FROM owned_vehicles WHERE owner=@identifier AND plate=@plate AND state=true AND type=@type', {
            ['@identifier'] = xPlayer['identifier'],
            ['@plate'] = plate,
            ['@type'] = 'car'
        }, function(result)
            if result then
                if result[1] then
                    cb(result[1])
                else
                    cb(false)
                end
            else
                cb(false)
            end
        end)
    else
        Notify(source, Strings['no_money'], 'error', 2000)
    end
end)

ESX['RegisterServerCallback']('loaf_garage:takeOut', function(source, cb, plate)
    local xPlayer = ESX['GetPlayerFromId'](source)

    MySQL['Async']['fetchAll']('SELECT * FROM owned_vehicles WHERE owner=@identifier AND plate=@plate AND state=false AND type=@type', {
        ['@identifier'] = xPlayer['identifier'],
        ['@plate'] = plate,
        ['@type'] = 'car'
    }, function(result)
        if result then
            if result[1] then
                MySQL['Async']['execute']('UPDATE owned_vehicles SET state=true WHERE plate=@plate', {
                    ['@plate'] = plate
                })
                cb(result[1])
            else
                cb(false)
            end
        else
            cb(false)
        end
    end)
end)

ESX['RegisterServerCallback']('loaf_garage:store', function(source, cb, damages, props, plate, garage)
    local xPlayer = ESX['GetPlayerFromId'](source)
        
    if not garage then 
        garage = 'custom' 
    end

    MySQL['Async']['fetchAll']('SELECT * FROM owned_vehicles WHERE owner=@identifier AND plate=@plate AND type=@type', {
        ['@identifier'] = xPlayer['identifier'], 
        ['@plate'] = plate,
        ['@type'] = 'car'
    }, function(result) 
        if result then
            if #result > 0 then
                if json.decode(props)['model'] == json.decode(result[1]['vehicle'])['model'] then
                    MySQL['Async']['execute']('UPDATE owned_vehicles SET vehicle=@vehicle, damages=@damages, state=false, garage=@garage WHERE plate=@plate', {
                        ['@vehicle'] = props,
                        ['@damages'] = damages,
                        ['@garage'] = garage,
                        ['@plate'] = plate
                    })
                    cb(true)
                else
                    print(xPlayer['identifier'] .. ' tried to store a vehicle with a different model. Probably cheat engine.\n')
                    Notify(source, Strings['not_your'], 'error', 2000)
                    cb(false)
                end
            else
                Notify(source, Strings['not_your'], 'error', 2000)
                cb(false)
            end
        else
            Notify(source, Strings['not_your'], 'error', 2000)
            cb(false)
        end
    end)
end)