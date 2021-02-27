ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback("fn_vehicleshop:buy", function(source,cb,carid)
    if not carid or carid==0 then TriggerClientEvent("esx:showNotification",_source,"Invalid car ID!"); return end
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local preciovercetti1 = (Config.cars[carid].price*0.2)
    local preciovercetti2 = (Config.cars[carid].price-preciovercetti1)
    local preciomsg = (Config.cars[carid].price-preciovercetti2)
    if xPlayer.getMoney()>=Config.cars[carid].price then
        cb(true)
        if xPlayer.getJob().name == 'vercetti' then 
            xPlayer.showNotification("Gracias a tu trabajo te has ahorrado: $~g~"..format_thousand(preciomsg).."~s~. Precio original: $~r~"..format_thousand(Config.cars[carid].price).."~s~. Has pagado: $~b~"..format_thousand(preciovercetti2).."~s~.")
            xPlayer.removeMoney(preciovercetti2)
        else
        xPlayer.removeMoney(Config.cars[carid].price)
        xPlayer.showNotification("Has adquirido un nuevo vehículo.")

        end
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
        TriggerClientEvent("esx:showNotification",_source,"No tienes suficiente dinero")
    end
end) 

function format_thousand(v)
    local s = string.format("%d", math.floor(v))
    local pos = string.len(s) % 3
    if pos == 0 then pos = 3 end
    return string.sub(s, 1, pos)
    .. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
end