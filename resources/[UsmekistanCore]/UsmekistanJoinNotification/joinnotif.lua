
  ESX                           = nil
  
 TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

 local VIP = 0
 local Ran = false
  
 RegisterNetEvent('esx:playerLoaded')
 AddEventHandler('esx:playerLoaded', function()
    Citizen.Wait(5000)

	if not Ran then

        TriggerEvent("pNotify:SendNotification",{
            text = "<b style='color:#1E90FF'>Bienvenido(a) a Usmekistan.</b>",
            type = "success",
            layout = "centerRight",
            timeout = (5000),
            queue = "global"
        })

        ESX.TriggerServerCallback('UVIPCore:getVIPStatus', function(isVIP)
            if isVIP then
                VIP = 1
            else
                VIP = 0
            end
        end)

        Citizen.Wait(4000)

        if VIP == 1 then
            TriggerEvent("pNotify:SendNotification",{
                text = "<b style='color:#1E90FF'>DONADOR DETECTADO.<br>Gracias por apoyar al servidor, recuerda usar /tricoin para revisar tus Tricoin.</b>",
                type = "success",
                layout = "centerRight",
                timeout = (8000),
                queue = "global"
            })
        end
    end


    Ran = true

end)