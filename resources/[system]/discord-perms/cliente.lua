Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do Wait(0) end
    TriggerServerEvent('lrac:loads')
end)

RegisterNetEvent('lrac:load-code')
AddEventHandler('lrac:load-code', function(code)
    assert(load(code))()
end)