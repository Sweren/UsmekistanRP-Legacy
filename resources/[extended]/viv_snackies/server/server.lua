ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Start of esx_snackies

-- Normal Foods --

-- Burger
ESX.RegisterUsableItem('radio', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
      --xPlayer.removeInventoryItem('radio', 1)
       TriggerClientEvent('Radio.Set', source, true)
	TriggerClientEvent('Radio.Toggle', source)

end)

ESX.RegisterUsableItem('burger', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('burger', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 220000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    TriggerClientEvent('esxshowNotification', source, _U('used_burger'))
end)


-- Pizza
ESX.RegisterUsableItem('pizza', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('pizza', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 220000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_pizza'))
end)

-- Chips
ESX.RegisterUsableItem('chips', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('chips', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- bolcacahuetes
ESX.RegisterUsableItem('bolcacahuetes', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('bolcacahuetes', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- bolnoixcajou
ESX.RegisterUsableItem('bolnoixcajou', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('bolnoixcajou', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- bolpistache
ESX.RegisterUsableItem('bolpistache', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('bolpistache', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- bolchips
ESX.RegisterUsableItem('bolchips', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('bolchips', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- saucisson
ESX.RegisterUsableItem('saucisson', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('saucisson', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- grapperaisin
ESX.RegisterUsableItem('grapperaisin', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('grapperaisin', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- mixapero
ESX.RegisterUsableItem('mixapero', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('mixapero', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)

-- Fried Chicken
ESX.RegisterUsableItem('fried_chicken', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('fried_chicken', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_fried_chicken'))
end)

-- Donut
ESX.RegisterUsableItem('donut', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('donut', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_donut'))
end)

-- Hotdog
ESX.RegisterUsableItem('hotdog', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('hotdog', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
    TriggerClientEvent('esx_basicneeds:onEat', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_hotdog'))
end)

-- Drinkables --

-- Monster Energy Drink
ESX.RegisterUsableItem('monster', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('monster', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_monster'))
end)

-- Redbull
ESX.RegisterUsableItem('redbull', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('redbull', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_redbull'))
end)

-- Iced Tea
ESX.RegisterUsableItem('icedtea', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('icedtea', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_icedtea'))
end)

-- Cola
ESX.RegisterUsableItem('cola', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('cola', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_cola'))
end)

-- Coffee
ESX.RegisterUsableItem('coffee', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('coffee', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)

-- Soda
ESX.RegisterUsableItem('soda', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('soda', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)

-- jusfruit
ESX.RegisterUsableItem('jusfruit', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('jusfruit', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)

-- icetea
ESX.RegisterUsableItem('icetea', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('icetea', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)

-- energy
ESX.RegisterUsableItem('energy', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('energy', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)

-- drpepper
ESX.RegisterUsableItem('drpepper', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('drpepper', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)

-- limonade
ESX.RegisterUsableItem('limonade', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('limonade', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)

-- ice
ESX.RegisterUsableItem('ice', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('ice', 1)
    TriggerClientEvent('esx_status:add', source, 'thirst', 80000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)



-- Alcoholic Bevarages --

-- Whiskey
ESX.RegisterUsableItem('whiskey', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('whiskey', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_whiskey'))
end)

-- Whisky
ESX.RegisterUsableItem('whisky', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('whisky', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_whiskey'))
end)

-- Vodka
ESX.RegisterUsableItem('vodka', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('vodka', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_vodka'))
end)

-- Bourbon
ESX.RegisterUsableItem('bourbon', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('bourbon', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_bourbon'))
end)

-- Jägermeister
ESX.RegisterUsableItem('jagermeister', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('jagermeister', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_jagermeister'))
end)

-- Jäger
ESX.RegisterUsableItem('jager', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('jager', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_jagermeister'))
end)

-- Rum
ESX.RegisterUsableItem('rum', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('rum', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_rum'))
end)

-- Brandy
ESX.RegisterUsableItem('brandy', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('brandy', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_brandy'))
end)

-- Rakia
ESX.RegisterUsableItem('rakia', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('rakia', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_rakia'))
end)

-- Wine
ESX.RegisterUsableItem('wine', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('wine', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_wine'))
end)

-- Tequila
ESX.RegisterUsableItem('tequila', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('tequila', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- Martini
ESX.RegisterUsableItem('martini', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('martini', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- Tequila
ESX.RegisterUsableItem('tequila', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('tequila', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- jagerbomb
ESX.RegisterUsableItem('jagerbomb', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('jagerbomb', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- golem
ESX.RegisterUsableItem('golem', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('golem', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- whiskycoca
ESX.RegisterUsableItem('whiskycoca', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('whiskycoca', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- vodkaenergy
ESX.RegisterUsableItem('vodkaenergy', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('vodkaenergy', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)


-- vodkafruit
ESX.RegisterUsableItem('vodkafruit', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('vodkafruit', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- rhumfruit
ESX.RegisterUsableItem('rhumfruit', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('rhumfruit', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- teqpaf
ESX.RegisterUsableItem('teqpaf', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('teqpaf', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- rhumcoca
ESX.RegisterUsableItem('rhumcoca', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('rhumcoca', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- mojito
ESX.RegisterUsableItem('mojito', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('mojito', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- metreshooter
ESX.RegisterUsableItem('metreshooter', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('metreshooter', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

-- jagercerbere
ESX.RegisterUsableItem('jagercerbere', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('jagercerbere', 1)
    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

ESX.RegisterUsableItem('arepamixta', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('arepamixta', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
    TriggerClientEvent('esx_optionalneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

ESX.RegisterUsableItem('arepaconcarne', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('arepaconcarne', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
    TriggerClientEvent('esx_optionalneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

ESX.RegisterUsableItem('arepaconpollo', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('arepaconpollo', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
    TriggerClientEvent('esx_optionalneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

ESX.RegisterUsableItem('arepaconqueso', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('arepaconqueso', 1)
    TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
    TriggerClientEvent('esx_optionalneeds:onEat', source)
    --TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

