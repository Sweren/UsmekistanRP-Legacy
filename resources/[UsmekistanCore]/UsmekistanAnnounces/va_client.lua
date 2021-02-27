local m = {} -- <<< Don't touch this!
-----------[ SETTINGS ]---------------------------------------------------

-- Delay in minutes between messages
m.delay = 5

-- Prefix appears in front of each message. 
-- Suffix appears on the end of each message.
-- Leave a prefix/suffix empty ( '' ) to disable them.
m.prefix = '^7^*[^6Usme^4Anunciador^7] '
m.suffix = ''

-- You can make as many messages as you want.
-- You can use ^0-^9 in your messages to change text color.
m.messages = {   
  '^5Se le recuerda a los ciudadanos que deben ^*^7VALORAR SU VIDA',
  '^r^5Recordamos que todos los dias hay ^7^*REINICIO^r ^5a las ^*^7 04:00 AM (Colombia)',
  '^5Se recomienda ajustar la ^*^7Calidad de Texturas en Normal ^r^5para evitar problemas al cargar el mapa',
  '^r^5Recordamos que el servidor esta ^7^*EN CONSTRUCCION^r ^5y pueden haber fallos, si encuentras uno reportalo en ^*^7DISCORD',
  '^5Recomendamos activar el aviso de las descargas, asi evitaran ^*^7CAER EN TEXTURAS SIN COLISION^r ^5 cuando inicien una descarga',
  '^5Se recomienda ajustar la ^*^7Calidad de Texturas en Normal ^r^5para evitar problemas al cargar el mapa',
  '^5Se le recuerda a los ciudadanos ^*^7usar el servicio de taxi^r^5 para movilizarse en la ciudad',
  '^5Se les recuerda que cada vez que hagan algo ilegal incluso salir de una zona de droga deben de enviar un ^*^7/entorno ^r^5informando de su actividad. El caso omiso a esta orden puede resultar en una ^*^7sancion',
  '^5Se le recuerda a los ciudadanos que para conducir vehículo es necesario ^*^7sacar la licencia',
  '^5Recomendamos activar el aviso de las descargas, asi evitaran ^*^7CAER EN TEXTURAS SIN COLISION^r ^5 cuando inicien una descarga',
}

-- Player identifiers on this list will not receive any messages.
-- Simply remove all identifiers if you don't want an ignore list.
m.ignorelist = {}
--------------------------------------------------------------------------



















-----[ CODE, DON'T TOUCH THIS ]-------------------------------------------
local playerIdentifiers
local enableMessages = true
local timeout = m.delay * 1000 * 60 -- from ms, to sec, to min
local playerOnIgnoreList = false
RegisterNetEvent('va:setPlayerIdentifiers')
AddEventHandler('va:setPlayerIdentifiers', function(identifiers)
    playerIdentifiers = identifiers
end)
Citizen.CreateThread(function()
    while playerIdentifiers == {} or playerIdentifiers == nil do
        Citizen.Wait(1000)
        TriggerServerEvent('va:getPlayerIdentifiers')
    end
    for iid in pairs(m.ignorelist) do
        for pid in pairs(playerIdentifiers) do
            if m.ignorelist[iid] == playerIdentifiers[pid] then
                playerOnIgnoreList = true
                break
            end
        end
    end
    if not playerOnIgnoreList then
        while true do
            for i in pairs(m.messages) do
                if enableMessages then
                    chat(i)
                end
                Citizen.Wait(timeout)
            end
            
            Citizen.Wait(0)
        end
    end
end)
function chat(i)
    TriggerEvent('chatMessage', '', {255,255,255}, m.prefix .. m.messages[i] .. m.suffix)
end
--------------------------------------------------------------------------
