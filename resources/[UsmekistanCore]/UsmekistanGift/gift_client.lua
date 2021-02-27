ESX 	= nil
local	PlayerData 	= {}
local 	minute	= 60 -- 1 Saat / Hour
local	giftCount = 0
local msg = "HA LLEGADO LA HORA DE TU REGALO"
local msg2 = "Reclamalo con /obtener"

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

function CheckPay()
	Citizen.CreateThread(function()
		while giftCount == 0 do
			Citizen.Wait(60000 * minute) 
			giftCount = 1
			--TR
			--TriggerEvent('chatMessage', "", {200, 50, 200}, "Hediye saatiniz geldi '/hediyeal' yazarak ikramiyenizi alabilirsiniz.")	
			--EN
			TriggerEvent('chatMessage', "", {200, 50, 200}, "Ha llegado la hora de tu regalo, reclamalo con '/obtener'.")	
			TriggerEvent('chat:addMessage', {
				template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(128, 51, 255, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;text-align: center;"><i class="fas fa-exclamation-triangle"></i>  <b>{0}</b>  <i class="fas fa-exclamation-triangle"></i> <br>{1}</div>',
				args = { msg, msg2 }
			})
		end
	end)
end

--TR
RegisterCommand('obtener', function(source, args, rawCommand)
--EN
--RegisterCommand('getgift', function(source, args, rawCommand)
	if giftCount == 1 then
		TriggerServerEvent('gift:playerGift', GetPlayerServerId(PlayerId()))
		giftCount = 0
		CheckPay()
	else
		--TR
		--TriggerEvent('chatMessage', "", {255, 255, 255}, "Hediye saatiniz henüz dolmamış.")
		--EN
		TriggerEvent('chatMessage', "", {255, 255, 255}, "Tu hora de regalo no ha llegado.")
	end
end)

CheckPay()