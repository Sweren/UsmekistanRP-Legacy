ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Set the language for all clients
i18n.setLang("pt")

--- vars
taxiBlip = nil
taxiVeh = nil
taxiPed = nil 
HornToInform = false
data = {}
z= nil
reachedDest = false

function DisplayHelpMsg(text)
	BeginTextCommandDisplayHelp("STRING")
	AddTextComponentScaleform(text)
	EndTextCommandDisplayHelp(0, 0, 1, -1)
end

function DisplayNotify(title, text)
	SetNotificationTextEntry("STRING");
	AddTextComponentString(text);
	SetNotificationMessage("CHAR_TAXI", "CHAR_TAXI", true, 1, "Uber", title, text);
	DrawNotification(true, false)
end

function DeleteTaxi(vehicle, driver)
	Wait(5500)
	if DoesBlipExist(taxiBlip) then
		RemoveBlip(taxiBlip)
	end

	if DoesEntityExist(vehicle) then
		DeleteEntity(taxiPed)
		DeleteEntity(taxiVeh)
		HornToInform = false
		data = {}
	end
end

function PopulateTaxiIndex()
	local handle, vehicle = FindFirstVehicle()
	local finished = false

	repeat
		if DoesEntityExist(vehicle) then
			if IsVehicleDriveable(vehicle) then
				if GetEntityModel(vehicle) == GetHashKey("taxi") then
					local x, y, z = table.unpack(GetEntityCoords(vehicle))
					local Px, Py, Pz = table.unpack(GetEntityCoords(PlayerPedId(), true))
					local driver = GetPedInVehicleSeat(vehicle, -1)
					if driver then
						if GetDistanceBetweenCoords(Px, Py, Pz, x, y, z, true) <= 18.0 then
						TaxiInfoTimer = GetGameTimer()
							if GetGameTimer() < TaxiInfoTimer + 6000 then
								DisplayHelpMsg(i18n.translate("info_message"))
							end
							data = {["vehicle"] = vehicle, ["driver"] = driver}
							if not IsEntityAMissionEntity(data.vehicle) then
								SetEntityAsMissionEntity(data.vehicle, true, true)
								SetEntityAsMissionEntity(data.driver, true, true)
							end
						else
							data = {}
						end
					end
				end
			end
		else
			vehicle = nil
		end
		finished, vehicle = FindNextVehicle(handle)
		until not finished
			EndFindVehicle(handle)
			return data
		end

local function SpawnTaxi()
	local taxiModel = GetHashKey("taxi")
	local driverModel = GetHashKey("a_m_y_stlat_01")

	local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
	local _, vector = GetNthClosestVehicleNode(x, y, z, math.random(5, 10), 0, 0, 0)
	local sX, sY, sZ = table.unpack(vector)	

	if not DoesEntityExist(taxiVeh) then
		DisplayNotify(i18n.translate("taxi_contact"), i18n.translate("taxi_dispatch"))
		PlaySoundFrontend(-1, "Text_Arrive_Tone", "Phone_SoundSet_Default", 1)
		Wait(2000)

		RequestModel(taxiModel)
		RequestModel(driverModel)
		
		while not HasModelLoaded(taxiModel) do
			Wait(0)
		end

		while not HasModelLoaded(driverModel) do
			Wait(0)
		end


		taxiVeh = CreateVehicle(taxiModel, sX, sY, sZ, 0, true, false)
		taxiPed = CreatePedInsideVehicle(taxiVeh, 26, driverModel, -1, true, false)

		SetEntityAsMissionEntity(taxiVeh, true, true)
		SetVehicleEngineOn(taxiVeh, true)		
		--SetAmbientVoiceName(taxiPed, "A_M_M_EASTSA_02_LATINO_FULL_01")

		if not DoesBlipExist(taxiBlip) then
			taxiBlip = AddBlipForEntity(taxiVeh)
			SetBlipSprite(taxiBlip, 198)
			SetBlipFlashes(taxiBlip, true)
			SetBlipFlashTimer(taxiBlip, 8000)
		end
		
		SetRadioToStationName("RADIO_07_DANCE_01")

		SetModelAsNoLongerNeeded(taxiModel)
		SetModelAsNoLongerNeeded(driverModel)
	else
		DisplayNotify(i18n.translate("taxi_contact"), i18n.translate("drivers_busy"))
	end	
end

function getGroundZ(x, y, z)
  local result, groundZ = GetGroundZFor_3dCoord(x+0.0, y+0.0, z+0.0, Citizen.ReturnResultAnyway())
  return groundZ
end

RegisterNetEvent("CashMeOutside")
AddEventHandler("CashMeOutside", function(state)
	Citizen.Wait(1000)

	if state then
		--PlayAmbientSpeech1(data.driver, "THANKS", "SPEECH_PARAMS_FORCE_NORMAL")
	else
		--PlayAmbientSpeech1(data.driver, "TAXID_NO_MONEY", "SPEECH_PARAMS_FORCE_NORMAL")
	end

	TaskLeaveVehicle(PlayerPedId(), data.vehicle, 1)
	DeleteTaxi(data.vehicle, data.driver)
	taxiService = false
end)

--[[ AddEventHandler("playerSpawned", function()
	Wait(15000)
	DisplayNotify(false, i18n.translate("welcome_message"))
end) ]]

--[[ RegisterCommand('uber', function()
	if not IsPedInAnyVehicle(PlayerPedId(), false) then
		SpawnTaxi()
	end
end) ]]

RegisterNetEvent("fs_taxi:start")
AddEventHandler("fs_taxi:start", function(source)

	ESX.TriggerServerCallback('fs_taxi:count', function(CopsConnected)
		if CopsConnected >= 2 then
			exports['mythic_notify']:DoHudText('error', 'Hay suficientes taxistas, no necesitas este servicio.')
		else
			if not IsPedInAnyVehicle(PlayerPedId(), false) then
				SpawnTaxi()
			end
		end
	end)
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		--[[ if not IsPedInAnyVehicle(PlayerPedId(), false) then
			PopulateTaxiIndex()
			if IsControlJustPressed(0, 168) then
				SpawnTaxi()
			end	
		end ]]

		if data then
			if DoesEntityExist(data.vehicle) then
				if not HornToInform then
					if GetIsVehicleEngineRunning(taxiVeh) then
						SetRadioToStationName("RADIO_07_DANCE_01")
						SetHornEnabled(taxiVeh, true)
						StartVehicleHorn(taxiVeh, 1000, GetHashKey("NORMAL"), false)
					end
					HornToInform = true
				end
			end

			if IsControlJustPressed(0, 38) then
				local TaxiDriver = GetPedInVehicleSeat(data.vehicle, -1)
				SetBlockingOfNonTemporaryEvents(data.driver, true)

				if not IsPedInVehicle(PlayerPedId(), data.vehicle, false) then
					TaskEnterVehicle(PlayerPedId(), data.vehicle, -1, 2, 1.0, 1, 0)
					TaxiInfoTimer = GetGameTimer()
					taxiService = true
				end
			end
		end
		if taxiService then
			if IsPedInVehicle(PlayerPedId(), data.vehicle, true) then
				if not questionDest then
					--PlayAmbientSpeech1(data.driver, "TAXID_WHERE_TO", "SPEECH_PARAMS_FORCE_NORMAL")
					questionDest = true
				end
				SetFollowPedCamViewMode(0)

				if GetGameTimer() > TaxiInfoTimer + 1000 and GetGameTimer() < TaxiInfoTimer + 15000 then
					DisplayHelpMsg(i18n.translate("info_waypoint_message"))
				end	

				if DoesBlipExist(GetFirstBlipInfoId(8)) then
					dx, dy, dz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, GetFirstBlipInfoId(8), Citizen.ResultAsVector()))
					z = getGroundZ(dx, dy, dz)

					if IsControlJustPressed(0, 38) then
						--PlayAmbientSpeech1(data.driver, "TAXID_BEGIN_JOURNEY", "SPEECH_PARAMS_FORCE_NORMAL")
						cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId(), true))

						disttom = CalculateTravelDistanceBetweenPoints(cx, cy, cz, dx, dy, z)
						TaskVehicleDriveToCoordLongrange(data.driver, data.vehicle, dx, dy, z, 25.0, 786859, 20.0)
						SetPedKeepTask(data.driver, true)
					end

					if IsControlJustPressed(0, 179) then
						--PlayAmbientSpeech1(data.driver, "TAXID_SPEED_UP", "SPEECH_PARAMS_FORCE_NORMAL")
						cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId(), true))

						TaskVehicleDriveToCoordLongrange(data.driver, data.vehicle, dx, dy, z, 28.0, 786859, 20.0)
						SetPedKeepTask(data.driver, true)
					end
				end

				pcoords = GetEntityCoords(PlayerPedId(), true)
				if GetDistanceBetweenCoords(pcoords.x, pcoords.y, pcoords.z, dx, dy, z, false) <= 20 then
					SetVehicleHandbrake(data.vehicle, true)
					if not reachedDest then
						--PlayAmbientSpeech1(data.driver, "TAXID_CLOSE_AS_POSS", "SPEECH_PARAMS_FORCE_NORMAL")
						TriggerServerEvent("fs_taxi:payCab", GetPlayerServerId(PlayerId()))

						reachedDest = true
					end
				end
			else
				questionDest = false
			end
		end

		if IsEntityDead(taxiVeh) then
			if DoesBlipExist(taxiBlip) then
				RemoveBlip(taxiBlip)
			end

			DeleteEntity(taxiPed)
			DeleteEntity(taxiVeh)

			HornToInform = false
			taxiService = false
			data = {}
		end

		if IsPlayerDead(PlayerId()) then
			if DoesEntityExist(taxiVeh) then
				RemoveBlip(taxiBlip)
			end

			DeleteEntity(taxiPed)
			DeleteEntity(taxiVeh)

			taxiService = false
			HornToInform = false
			data = {}
		end

		if taxiService then
			if not IsPedInAnyTaxi(PlayerPedId()) then
				ocoords = GetEntityCoords(PlayerPedId(), true)
				vehcoords = GetEntityCoords(data.vehicle, true)

				if GetDistanceBetweenCoords(ocoords.x, ocoords.y, ocoords.z, vehcoords.x, vehcoords.y, vehcoords.z, true) > 10.0 then
					DeleteTaxi(data.vehicle, data.driver)
				end
			end
		end

	end
end)

TriggerEvent('chat:addSuggestion', '/uber', 'Solicita un Uber IA')