ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback("fn_vehicleshop2:buy", function(source,cb,carid)
    if not carid or carid==0 then TriggerClientEvent("esx:showNotification",_source,"Invalid car ID!"); return end
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.getMoney()>=Config.cars[carid].price then
        cb(true)
        xPlayer.removeMoney(Config.cars[carid].price)
--[[
        local newPlate     = exports.esx_vehicleshop:GeneratePlate()
        local vehicleProps = ESX.Game.GetVehicleProperties(Config.cars[carid].model)

        MySQL.Async.execute('INSERT INTO owned_vehicles (owner, vehicle, plate, type, job, `stored`) VALUES (@owner, @vehicle, @plate, @type, @job, @stored)', {
                ['@owner'] = xPlayer.identifier,
                ['@vehicle'] = json.encode(vehicleProps),
                ['@plate'] = vehicleProps.plate,
                ['@stored'] = true
            }, function (rowsChanged)
                cb(true)
            end)
--]]
    else
        cb(false)
        TriggerClientEvent("esx:showNotification",_source,"You don't have enough money!")
    end
end) 