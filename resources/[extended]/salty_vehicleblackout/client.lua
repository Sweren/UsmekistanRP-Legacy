-- No need to modify any of this, but I tried to document what it's doing
local isBlackedOut = false
local oldBodyDamage = 0
local oldSpeed = 0

local function blackout()
	-- Only blackout once to prevent an extended blackout if both speed and damage thresholds were met
	if not isBlackedOut then
		isBlackedOut = true
		-- This thread will black out the user's screen for the specified time
		Citizen.CreateThread(function()
			DoScreenFadeOut(100)
			while not IsScreenFadedOut() do
				Citizen.Wait(0)
			end
			local playerPed  = PlayerPedId()
			local prevHealth = GetEntityHealth(playerPed)
			local health = 120
			local dead = 99
			--if prevHealth >= 150 then
				--SetEntityHealth(playerPed, health)
				TriggerEvent("pNotify:SendNotification", {text = 'Estás mareado...'})
				SetTimecycleModifier("REDMIST_blend")
				ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)
			--[[else
				SetEntityHealth(playerPed, dead)
				TriggerEvent("pNotify:SendNotification", {text = 'Otrzymano poważne obrażenia po wypadku!'})
			end]]
			Citizen.Wait(Config.BlackoutTime)
			DoScreenFadeIn(1000)
			Citizen.Wait(1000)
			DoScreenFadeOut(500)
			while not IsScreenFadedOut() do
				Citizen.Wait(0)
			end
			DoScreenFadeIn(500)
			isBlackedOut = false
			Citizen.Wait(10000)
			SetTimecycleModifier("hud_def_desat_Trevor")
			Citizen.Wait(15000)
			SetTimecycleModifier("default")
			StopGameplayCamShaking()
			TriggerEvent("pNotify:SendNotification", {text = 'Te sientes mejor.'})
			--[[Citizen.Wait(1500)
			Citizen.Wait(1500)
			DoScreenFadeOut(500)
			while not IsScreenFadedOut() do
				Citizen.Wait(0)
			end
			Citizen.Wait(1000)
			DoScreenFadeIn(500)
			isBlackedOut = false]]
		end)
	end
end

local function blackout2()
	-- Only blackout once to prevent an extended blackout if both speed and damage thresholds were met
	if not isBlackedOut then
		isBlackedOut = true
		-- This thread will black out the user's screen for the specified time
		Citizen.CreateThread(function()
			DoScreenFadeOut(100)
			while not IsScreenFadedOut() do
				Citizen.Wait(0)
			end
			local playerPed  = PlayerPedId()
			local dead = 99
			SetEntityHealth(playerPed, dead)
			TriggerEvent("pNotify:SendNotification", {text = '¡Se recibieron heridas graves después del accidente!'})
			Citizen.Wait(Config.BlackoutTime)
			DoScreenFadeIn(1000)
			Citizen.Wait(1000)
			DoScreenFadeOut(500)
			while not IsScreenFadedOut() do
				Citizen.Wait(0)
			end
			Citizen.Wait(1500)
			DoScreenFadeIn(500)
			Citizen.Wait(1500)
			DoScreenFadeOut(500)
			while not IsScreenFadedOut() do
				Citizen.Wait(0)
			end
			Citizen.Wait(1000)
			DoScreenFadeIn(500)
			isBlackedOut = false
		end)
	end
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		-- Get the vehicle the player is in, and continue if it exists
		local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
		if DoesEntityExist(vehicle) then
			-- Check if damage blackout is enabled
			if Config.BlackoutFromDamage then
				local currentDamage = GetVehicleBodyHealth(vehicle)
				-- If the damage changed, see if it went over the threshold and blackout if necesary
				if currentDamage ~= oldBodyDamage then
					if not isBlackedOut and (currentDamage < oldBodyDamage) and ((oldBodyDamage - currentDamage) >= Config.BlackoutDamageRequired) and ((oldBodyDamage - currentDamage) < Config.BlackoutDamageRequired2) then
						blackout()
					elseif not isBlackedOut and (currentDamage < oldBodyDamage) and ((oldBodyDamage - currentDamage) >= Config.BlackoutDamageRequired2) then
						blackout2()
					end
					oldBodyDamage = currentDamage
				end
			end

			-- Check if speed blackout is enabled
			if Config.BlackoutFromSpeed then
				local currentSpeed = GetEntitySpeed(vehicle) * 3.6
				-- If the speed changed, see if it went over the threshold and blackout if necesary
				if currentSpeed ~= oldSpeed then
					if not isBlackedOut and (currentSpeed < oldSpeed) and ((oldSpeed - currentSpeed) >= Config.BlackoutSpeedRequired) and ((oldSpeed - currentSpeed) < Config.BlackoutSpeedRequired2) then
						blackout()
					elseif not isBlackedOut and (currentSpeed < oldSpeed) and ((oldSpeed - currentSpeed) >= Config.BlackoutSpeedRequired2) then
						blackout2()
					end
					oldSpeed = currentSpeed
				end
			end
		else
			oldBodyDamage = 0
			oldSpeed = 0
		end

		if isBlackedOut and Config.DisableControlsOnBlackout then
			-- Borrowed controls from https://github.com/Sighmir/FiveM-Scripts/blob/master/vrp/vrp_hotkeys/client.lua
			DisableControlAction(0,71,true) -- veh forward
			DisableControlAction(0,72,true) -- veh backwards
			DisableControlAction(0,63,true) -- veh turn left
			DisableControlAction(0,64,true) -- veh turn right
			DisableControlAction(0,75,true) -- disable exit vehicle
		end
	end
end)
