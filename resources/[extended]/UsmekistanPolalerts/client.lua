ESX                           = nil
local PlayerData              = {}
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

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

--Config
local timer = 1 --in minutes - Set the time during the player is outlaw
local showOutlaw = true --Set if show outlaw act on map
local gunshotAlert = true --Set if show alert when player use gun
local carJackingAlert = false --Set if show when player do carjacking
local meleeAlert = false --Set if show when player fight in melee
local blipGunTime = 40 --in second
local blipMeleeTime = 40 --in second
local blipJackingTime = 40 -- in second
local showcopsmisbehave = false  --show notification when cops steal too
--End config

local timing = timer * 60000 --Don't touche it

GetPlayerName()
RegisterNetEvent('outlawNotify')
AddEventHandler('outlawNotify', function(alert)
		if PlayerData.job ~= nil and PlayerData.job.name == 'police' or PlayerData.job.name == 'fbi'  then
            Notify(alert)
			TriggerServerEvent('InteractSound_SV:PlayOnSource', 'PoliceDispatch', 1.0)
        end
end)

RegisterNetEvent('outlawNotifyFire')
AddEventHandler('outlawNotifyFire', function(alert)
		if PlayerData.job.name == 'police' or PlayerData.job.name == 'fbi' then
			Notify(" INTERVENCIÓN REQUERIDA |"..alert)
			TriggerServerEvent('InteractSound_SV:PlayOnSource', 'PoliceDispatch', 1.0)
		elseif PlayerData.job ~= nil and PlayerData.job.name == 'fire' then
			Notify(" ASISTENCIA MÉDICA REQUERIDA |"..alert)
			TriggerServerEvent('InteractSound_SV:PlayOnSource', 'FireDispatch', 1.0)
        end
end)

RegisterNetEvent('outlawNotifyJob')
AddEventHandler('outlawNotifyJob', function(alert, job)
	local name = ' '
	local godzinaInt = GetClockHours()
	local godzina = ''
	if string.len(tostring(godzinaInt)) == 1 then
		godzina = '0'..godzinaInt
	else
		godzina = godzinaInt
	end
	local minutaInt = GetClockMinutes()
	local minuta = ''
	if string.len(tostring(minutaInt)) == 1 then
		minuta = '0'..minutaInt
	else
		minuta = minutaInt
	end
	godzina = godzina..":"..minuta

	if job == 'police' or job == 'fbi' or PlayerData.job.name == 'police' or PlayerData.job.name == 'fbi' then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.4vw; margin: 0.5vw; background-color: rgba(163, 8, 0, 0.9); border-radius: 3px;"><i class="fas fa-exclamation-triangle"></i> {0} {1}</div>',
			args = { name, " INTERVENCIÓN REQUERIDA | "..alert.." | Hora: "..godzina }
		})
		Citizen.Wait(1500)
		TriggerServerEvent('InteractSound_SV:PlayOnSource', 'PoliceDispatch', 1.0)
	elseif job == 'fire' and PlayerData.job.name == 'fire' then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.4vw; margin: 0.5vw; background-color: rgba(163, 8, 0, 0.9); border-radius: 3px;"><i class="fas fa-ambulance"></i> {0} {1}</div>',
			args = { name, " INTERVENCIÓN REQUERIDA | "..alert.." | Hora: "..godzina }
		})
		Citizen.Wait(1500)
		TriggerServerEvent('InteractSound_SV:PlayOnSource', 'FireDispatch', 1.0)
	elseif job == 'mecano' and PlayerData.job.name == 'mecano' then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.4vw; margin: 0.5vw; background-color: rgba(232, 87, 9, 0.9); border-radius: 3px;"><i class="fas fa-wrench"></i> {0} {1}</div>',
			args = { name, " ASISTENCIA EN CARRETERA REQUERIDA | "..alert.." | Hora: "..godzina }
		})
	elseif job == 'taxi' and PlayerData.job.name == 'taxi' then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.4vw; margin: 0.5vw; background-color: rgba(217, 161, 30, 0.9); border-radius: 3px;"><i class="fas fa-taxi"></i> {0} {1}</div>',
			args = { name, " TRANSPORTE REQUERIDO | "..alert.." | Hora: "..godzina }
		})
    end
end)

function Notify(text)
		local godzinaInt = GetClockHours()
		local godzina = ''
		if string.len(tostring(godzinaInt)) == 1 then
			godzina = '0'..godzinaInt
		else
			godzina = godzinaInt
		end

		local minutaInt = GetClockMinutes()
		local minuta = ''
		if string.len(tostring(minutaInt)) == 1 then
			minuta = '0'..minutaInt
		else
			minuta = minutaInt
		end
		godzina = godzina..":"..minuta
	--TriggerEvent("pNotify:SendNotification", {text = text})
	local name = ' '
	local message = text.." | Hora: "..godzina
	TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.4vw; margin: 0.5vw; background-color: rgba(163, 8, 0, 0.9); border-radius: 3px;"><i class="fas fa-exclamation-triangle"></i> {0} {1}</div>',
        args = { name, message }
    })
end

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if NetworkIsSessionStarted() then
            DecorRegister("IsOutlaw",  3)
            DecorSetInt(GetPlayerPed(-1), "IsOutlaw", 1)
            return
        end
    end
end)


RegisterNetEvent('gunshotPlace')
AddEventHandler('gunshotPlace', function(gx, gy, gz)
	if PlayerData.job ~= nil and PlayerData.job.name == 'police' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'fbi' then
		if gunshotAlert then
			local transG = 250
			local gunshotBlip = AddBlipForCoord(gx, gy, gz)
			SetBlipSprite(gunshotBlip,  42)
			SetBlipAlpha(gunshotBlip,  transG)
			SetBlipAsShortRange(gunshotBlip,  false)
			SetBlipScale(gunshotBlip, 0.8)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString('Disparos')
			EndTextCommandSetBlipName(gunshotBlip)
			while transG ~= 0 do
				Wait(blipGunTime * 8)
				transG = transG - 1
				SetBlipAlpha(gunshotBlip,  transG)
				if transG == 0 then
					SetBlipSprite(gunshotBlip,  1)
					return
				end
			end

		end
	end
end)

RegisterNetEvent('1013Place')
AddEventHandler('1013Place', function(gx, gy, gz)
	if PlayerData.job ~= nil and (PlayerData.job.name == 'police' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'fire' or PlayerData.job.name == 'offfire' or PlayerData.job.name == 'fbi') then
		if gunshotAlert then
			local transG = 250
			local gunshotBlip = AddBlipForCoord(gx, gy, gz)
			SetBlipSprite(gunshotBlip,  42)
			SetBlipAlpha(gunshotBlip,  transG)
			SetBlipAsShortRange(gunshotBlip,  false)
			SetBlipScale(gunshotBlip, 0.8)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString('^1Oficial')
			EndTextCommandSetBlipName(gunshotBlip)
			while transG ~= 0 do
				Wait(blipGunTime * 8)
				transG = transG - 1
				SetBlipAlpha(gunshotBlip,  transG)
				if transG == 0 then
					SetBlipSprite(gunshotBlip,  1)
					return
				end
			end

		end
	end
end)

RegisterNetEvent('wlamaniePlace')
AddEventHandler('wlamaniePlace', function(gx, gy, gz)
	if PlayerData.job ~= nil and PlayerData.job.name == 'police' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'fbi' then
		if gunshotAlert then
			local transG = 250
			local gunshotBlip = AddBlipForCoord(gx, gy, gz)
			SetBlipSprite(gunshotBlip,  42)
			SetBlipAlpha(gunshotBlip,  transG)
			SetBlipAsShortRange(gunshotBlip,  false)
			SetBlipScale(gunshotBlip, 0.8)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString('^1Robo en el vehículo')
			EndTextCommandSetBlipName(gunshotBlip)
			while transG ~= 0 do
				Wait(blipGunTime * 8)
				transG = transG - 1
				SetBlipAlpha(gunshotBlip,  transG)
				if transG == 0 then
					SetBlipSprite(gunshotBlip,  1)
					return
				end
			end

		end
	end
end)


Citizen.CreateThread( function()
    while true do
        Wait(0)
        if DecorGetInt(GetPlayerPed(-1), "IsOutlaw") == 2 then
            Wait( math.ceil(timing) )
            DecorSetInt(GetPlayerPed(-1), "IsOutlaw", 1)
        end
    end
end)

Citizen.CreateThread( function()
	local isWlGun = false
		while true do
		Citizen.Wait(0)
		
			if IsPedShooting(GetPlayerPed(-1)) then

							local ped = GetPlayerPed(-1)
							local currentWeaponHash = GetSelectedPedWeapon(ped)

							if currentWeaponHash == 600439132 or currentWeaponHash == 911657153 or currentWeaponHash == 101631238 or currentWeaponHash == 883325847 or currentWeaponHash == 3696079510 then
								isWlGun = true
							end


					local plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
					local s1, s2 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, plyPos.x, plyPos.y, plyPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
					local street1 = GetStreetNameFromHashKey(s1)
					local street2 = GetStreetNameFromHashKey(s2)
						if not isWlGun then
							if IsPedShooting(GetPlayerPed(-1)) then
						DecorSetInt(GetPlayerPed(-1), "IsOutlaw", 2)
						if PlayerData.job ~= nil and PlayerData.job.name == 'police' or PlayerData.job.name == 'fbi' and showcopsmisbehave == false then
						elseif PlayerData.job ~= nil and PlayerData.job.name == 'police' or PlayerData.job.name == 'fbi' and showcopsmisbehave then
							ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
								local sex = nil
								if skin.sex == 0 then
									sex = "Hombre"
								else
									sex = "Mujer"
								end
								TriggerServerEvent('gunshotInProgressPos', plyPos.x, plyPos.y, plyPos.z)
								if s2 == 0 then
									TriggerServerEvent('gunshotInProgressS1', street1, sex)
								elseif s2 ~= 0 then
									TriggerServerEvent("gunshotInProgress", street1, street2, sex)
								end
							end)
							Wait(3000)
						else
							ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
								local sex = nil
								if skin.sex == 0 then
									sex = "Hombre"
								else
									sex = "Mujer"
								end
								TriggerServerEvent('gunshotInProgressPos', plyPos.x, plyPos.y, plyPos.z)
								if s2 == 0 then
									TriggerServerEvent('gunshotInProgressS1', street1, sex)
								elseif s2 ~= 0 then
									TriggerServerEvent("gunshotInProgress", street1, street2, sex)
								end
							end)
							Wait(3000)
						end
					end
						end
		end
    end
end)

-- Wytrychy

--local wlamuje 	= false

RegisterNetEvent('esx_powiadomienia:onHijack')
AddEventHandler('esx_powiadomienia:onHijack', function()
	ESX.UI.Menu.CloseAll()
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)


	--if wlamuje then
		--TriggerEvent("pNotify:SendNotification", {text = 'Nie możesz użyć dwóch wytrychów na raz!'})
		--TriggerServerEvent("oddajWytrychDebilowi")
	--else
		--wlamuje = true
		TriggerEvent("pNotify:SendNotification", {text = 'Estás intentando entrar al vehículo...'})

		if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
			local vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)

			TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)

			local chance = math.random(1, 100)
			local alarm  = math.random(1, 100)
			local plate = GetVehicleNumberPlateText(vehicle)
			local klasaNR = GetVehicleClass(vehicle)
			local vehicleName

			-- Klasy Pojazdów
			if klasaNR == 0 then
				vehicleName = "Compacto"
			elseif klasaNR == 1 then
				vehicleName = "Sedan"
			elseif klasaNR == 2 then
				vehicleName = 'SUV'
			elseif klasaNR == 3 then
				vehicleName = 'Coupe'
			elseif klasaNR == 4 then
				vehicleName = 'Músculo'
			elseif klasaNR == 5 then
				vehicleName = 'Clásico'
			elseif klasaNR == 6 then
				vehicleName = 'Deportivo'
			elseif klasaNR == 7 then
				vehicleName = 'Supercoche'
			elseif klasaNR == 8 then
				vehicleName = 'Motocicleta'
			elseif klasaNR == 9 then
				vehicleName = 'Off-Road'
			elseif klasaNR == 10 then
				vehicleName = 'Industrial'
			elseif klasaNR == 11 then
				vehicleName = 'Industrial'
			elseif klasaNR == 12 then
				vehicleName = 'Van'
			elseif klasaNR == 13 then
				vehicleName = 'Bicicleta'
			elseif klasaNR == 14 then
				vehicleName = 'Barco'
			elseif klasaNR == 15 then
				vehicleName = 'Helicóptero'
			elseif klasaNR == 16 then
				vehicleName = 'Avión'
			elseif klasaNR == 17 then
				vehicleName = 'Servicio'
			elseif klasaNR == 18 then
				vehicleName = 'PRIVILEGIADO'
			elseif klasaNR == 19 then
				vehicleName = 'Militar'
			elseif klasaNR == 20 then
				vehicleName = 'Comercial'
			end

			


				
						if DoesEntityExist(vehicle) then
							if alarm <= 75 then
								SetVehicleAlarm(vehicle, true)
								StartVehicleAlarm(vehicle)

								local plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
								local s1, s2 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, plyPos.x, plyPos.y, plyPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
								local street1 = GetStreetNameFromHashKey(s1)
								local street2 = GetStreetNameFromHashKey(s2)
								DecorSetInt(GetPlayerPed(-1), "IsOutlaw", 2)
									ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
										local sex = nil
										if skin.sex == 0 then
											sex = "Hombre"
										else
											sex = "Mujer"
										end
										TriggerServerEvent('wlamaniecarPos', plyPos.x, plyPos.y, plyPos.z)
										if s2 == 0 then
											TriggerServerEvent('wlamaniecarS1', street1, sex, plate, vehicleName)
										elseif s2 ~= 0 then
											TriggerServerEvent("wlamaniecar", street1, street2, sex, plate, vehicleName)
										end
									end)
									Wait(3000)
							end
							--wlamuje = false

							--[[Citizen.CreateThread(function()
								Citizen.Wait(10000)
								if chance <= 40 then
									SetVehicleDoorsLocked(vehicle, 1)
									PlayVehicleDoorOpenSound(vehicle, 0)
									SetVehicleDoorsLockedForAllPlayers(vehicle, false)
									ClearPedTasksImmediately(playerPed)
									TriggerServerEvent('esx_customui:setVehicleDoorsForEveryone', {vehicle, 1, plate})
									TriggerEvent("pNotify:SendNotification", {text = 'Pojazd odblokowany!'})
								else
									TriggerEvent("pNotify:SendNotification", {text = 'Wytrych pękł!'})
									ClearPedTasksImmediately(playerPed)
								end
								wlamuje = false
							end)]]
							TriggerEvent("route68:garazWytrych")
				end
		end
	--end
end)

-- 10-13
RegisterNetEvent('esx_powiadomienia:1013')
AddEventHandler('esx_powiadomienia:1013', function()
				local ped = GetPlayerPed(-1)
        local plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
        local s1, s2 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, plyPos.x, plyPos.y, plyPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
        local street1 = GetStreetNameFromHashKey(s1)
        local street2 = GetStreetNameFromHashKey(s2)
        DecorSetInt(GetPlayerPed(-1), "IsOutlaw", 2)
				if PlayerData.job ~= nil and PlayerData.job.name == 'police' or PlayerData.job.name == 'fbi' then
					ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
						local sex = nil
						if skin.sex == 0 then
							sex = "Hombre"
						else
							sex = "Mujer"
						end
						TriggerServerEvent('1013Pos', plyPos.x, plyPos.y, plyPos.z)
						if s2 == 0 then
							TriggerServerEvent('1013Pos1', street1, sex)
						elseif s2 ~= 0 then
							TriggerServerEvent("1013Poss", street1, street2, sex)
						end
					end)
				Wait(3000)
				end
end)



