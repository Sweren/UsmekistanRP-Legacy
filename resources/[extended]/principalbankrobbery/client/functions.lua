GlobalFunction = function(event, data)
    local options = {
        event = event,
        data = data
    }

    TriggerServerEvent("bankrobberies:globalEvent", options)
end

TryHackingDevice = function(bank)
	ESX.TriggerServerCallback("bankrobberies:fetchCops", function(enough)
		if enough then
			StartHackingDevice(bank)
		else
			ESX.ShowNotification("Policias Insuficientes.")
		end
	end)
end

StartHackingDevice = function(bank)
	Citizen.CreateThread(function()
		cachedData["hacking"] = true

		local bankValues = Config.Bank[bank]
	
		if #Config.ItemNeeded > 0 then
			if not HasItem() then
				return ESX.ShowNotification("No tienes ningun ~h~~r~ " .. Config.ItemNeeded)
			end
		end
	
		local closestPlayer, closestPlayerDst = ESX.Game.GetClosestPlayer()
	
		if closestPlayer ~= -1 and closestPlayerDst <= 3.0 then
			if IsEntityPlayingAnim(GetPlayerPed(closestPlayer), "anim@heists@ornate_bank@hack", "hack_loop", 3) or IsEntityPlayingAnim(GetPlayerPed(closestPlayer), "anim@heists@ornate_bank@hack", "hack_enter", 3) or IsEntityPlayingAnim(GetPlayerPed(closestPlayer), "anim@heists@ornate_bank@hack", "hack_exit", 3) then
				return ESX.ShowNotification("Otra persona esta ~r~rompiendo el dispositivo.")
			end
		end
	
		local device = GetClosestObjectOfType(bankValues["start"]["pos"], 5.0, bankValues["device"]["model"], false)
	
		if not DoesEntityExist(device) then 
			return
		end
	
		cachedData["bank"] = bank
	
		LoadModels({
			GetHashKey("hei_p_m_bag_var22_arm_s"),
			GetHashKey("hei_prop_hst_laptop"),
			"anim@heists@ornate_bank@hack"
		})
	
		GlobalFunction("alarm_police", bank)

		cachedData["bag"] = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), bankValues["start"]["pos"] - vector3(0.0, 0.0, 5.0), true, false, false)
		cachedData["laptop"] = CreateObject(GetHashKey("hei_prop_hst_laptop"), bankValues["start"]["pos"]  - vector3(0.0, 0.0, 5.0), true, false, false)
		
		local offset = GetOffsetFromEntityInWorldCoords(device, 0.1, 0.8, 0.4)
		local initial = GetAnimInitialOffsetPosition("anim@heists@ornate_bank@hack", "hack_enter", offset, 0.0, 0.0, GetEntityHeading(device), 0, 2)
		local position = vector3(initial["x"], initial["y"], initial["z"] + 0.2)
	
		ToggleBag(false)
	
		cachedData["scene"] = NetworkCreateSynchronisedScene(position, 0.0, 0.0, GetEntityHeading(device), 2, false, false, 1065353216, 0, 1.3)
	
		NetworkAddPedToSynchronisedScene(PlayerPedId(), cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_enter", 1.5, -4.0, 1, 16, 1148846080, 0)
	
		NetworkAddEntityToSynchronisedScene(cachedData["bag"], cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_enter_suit_bag", 4.0, -8.0, 1)
		NetworkAddEntityToSynchronisedScene(cachedData["laptop"], cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_enter_laptop", 4.0, -8.0, 1)
	
		NetworkStartSynchronisedScene(cachedData["scene"])
	
		Citizen.Wait(6000)
	
		cachedData["scene"] = NetworkCreateSynchronisedScene(position, 0.0, 0.0, GetEntityHeading(device), 2, false, false, 1065353216, 0, 1.3)
	
		NetworkAddPedToSynchronisedScene(PlayerPedId(), cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_loop", 1.5, -4.0, 1, 16, 1148846080, 0)
	
		NetworkAddEntityToSynchronisedScene(cachedData["bag"], cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_loop_suit_bag", 4.0, -8.0, 1)
		NetworkAddEntityToSynchronisedScene(cachedData["laptop"], cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_loop_laptop", 4.0, -8.0, 1)
	
		NetworkStartSynchronisedScene(cachedData["scene"])
	
		Citizen.Wait(2500)
	
		StartComputer()
	
		Citizen.Wait(4200)
	
		cachedData["scene"] = NetworkCreateSynchronisedScene(position, 0.0, 0.0, GetEntityHeading(device), 2, false, false, 1065353216, 0, 1.3)
	
		NetworkAddPedToSynchronisedScene(PlayerPedId(), cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_exit", 1.5, -4.0, 1, 16, 1148846080, 0)
	
		NetworkAddEntityToSynchronisedScene(cachedData["bag"], cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_exit_suit_bag", 4.0, -8.0, 1)
		NetworkAddEntityToSynchronisedScene(cachedData["laptop"], cachedData["scene"], "anim@heists@ornate_bank@hack", "hack_exit_laptop", 4.0, -8.0, 1)
	
		NetworkStartSynchronisedScene(cachedData["scene"])
	
		Citizen.Wait(4500)
	
		ToggleBag(true)

		DeleteObject(cachedData["bag"])
		DeleteObject(cachedData["laptop"])

		cachedData["hacking"] = false
	end)
end

HackingCompleted = function(success)
	if success then
		local trolleys = SpawnTrolleys(cachedData["bank"])

		GlobalFunction("start_robbery", {
			["bank"] = cachedData["bank"],
			["trolleys"] = trolleys,
			["save"] = true
		})
	else

	end
end

OpenDoor = function(bank)
	RequestScriptAudioBank("vault_door", false)

	while not HasAnimDictLoaded("anim@heists@fleeca_bank@bank_vault_door") do
		Citizen.Wait(0)

		RequestAnimDict("anim@heists@fleeca_bank@bank_vault_door")
	end

	local doorInformation = Config.Bank[bank]["door"]

	local doorEntity = GetClosestObjectOfType(doorInformation["pos"], 5.0, doorInformation["model"], false)

	if not DoesEntityExist(doorEntity) then
		return
	end

	PlaySoundFromCoord(-1, "vault_unlock", doorInformation["pos"], "dlc_heist_fleeca_bank_door_sounds", 0, 0, 0)
	PlayEntityAnim(doorEntity, "bank_vault_door_opens", "anim@heists@fleeca_bank@bank_vault_door", 4.0, false, 1, 0, 0.0, 8)
	ForceEntityAiAndAnimationUpdate(doorEntity)

	Citizen.Wait(5000)

	DeleteEntity(doorEntity)

	if IsEntityPlayingAnim(doorEntity, "anim@heists@fleeca_bank@bank_vault_door", "bank_vault_door_opens", 3) then

		if GetEntityAnimCurrentTime(doorEntity, "anim@heists@fleeca_bank@bank_vault_door", "bank_vault_door_opens") >= 1.0 then
			FreezeEntityPosition(doorEntity, true)

			StopEntityAnim(doorEntity, "bank_vault_door_opens", "anim@heists@fleeca_bank@bank_vault_door", -1000.0)
			SetEntityRotation(doorEntity, 0, 0, -80.0, 2, 1)

			ForceEntityAiAndAnimationUpdate(doorEntity)

			RemoveAnimDict("anim@heists@fleeca_bank@bank_vault_door")
		end
	end
end

SpawnTrolleys = function(bank)
	local bankTrolleys = Config.Bank[bank]["trolleys"]
	local trolleyInfo = Config.Trolley

	local trolleyData = {}

	for trolley, values in pairs(bankTrolleys) do
		if not HasModelLoaded(trolleyInfo["model"]) then
			LoadModels({
				trolleyInfo["model"]
			})
		end

		local trolleyObject = CreateObject(trolleyInfo["model"], values["pos"], true)
		SetEntityRotation(trolleyObject, 0.0, 0.0, values["heading"])

		PlaceObjectOnGroundProperly(trolleyObject)
		SetEntityAsMissionEntity(trolleyObject, true, true)

		trolleyData[trolley] = {
			["net"] = ObjToNet(trolleyObject),
			["money"] = Config.Trolley["cash"]
		}

		SetModelAsNoLongerNeeded(trolleyInfo["model"])
	end
	
	return trolleyData
end

GrabCash = function(trolleyData)
	local ped = PlayerPedId()

	local CashAppear = function()
		local pedCoords = GetEntityCoords(ped)
	
		local cashModel = GetHashKey("hei_prop_heist_cash_pile")
	
		LoadModels({
			cashModel
		})
	
		local cashPile = CreateObject(cashModel, pedCoords, true)
	
		FreezeEntityPosition(cashPile, true)
		SetEntityInvincible(cashPile, true)
		SetEntityNoCollisionEntity(cashPile, ped)
		SetEntityVisible(cashPile, false, false)
		AttachEntityToEntity(cashPile, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
	
		local startedGrabbing = GetGameTimer()
	
		Citizen.CreateThread(function()
			while GetGameTimer() - startedGrabbing < 37000 do
				Citizen.Wait(0)
	
				DisableControlAction(0, 73, true)

				if HasAnimEventFired(ped, GetHashKey("CASH_APPEAR")) then
					if not IsEntityVisible(cashPile) then
						SetEntityVisible(cashPile, true, false)
					end
				end
		
				if HasAnimEventFired(ped, GetHashKey("RELEASE_CASH_DESTROY")) then
					if IsEntityVisible(cashPile) then
						SetEntityVisible(cashPile, false, false)
	
						TriggerServerEvent("bankrobberies:receiveCash")
					end
				end
			end
		
			DeleteObject(cashPile)
		end)
	end

	local trolleyObject = NetToObj(trolleyData["net"])
	local emptyTrolley = Config.EmptyTrolley

	if IsEntityPlayingAnim(trolleyObject, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 3) then
		return ESX.ShowNotification("Alguien ya esta tomando dinero.")
	end

	LoadModels({
		GetHashKey("hei_p_m_bag_var22_arm_s"),
		"anim@heists@ornate_bank@grab_cash",
		emptyTrolley["model"]
	})
	
	while not NetworkHasControlOfEntity(trolleyObject) do
		Citizen.Wait(0)

		NetworkRequestControlOfEntity(trolleyObject)
	end

	cachedData["bag"] = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), GetEntityCoords(PlayerPedId()), true, false, false)

	ToggleBag(false)

	cachedData["scene"] = NetworkCreateSynchronisedScene(GetEntityCoords(trolleyObject), GetEntityRotation(trolleyObject), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, cachedData["scene"], "anim@heists@ornate_bank@grab_cash", "intro", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(cachedData["bag"], cachedData["scene"], "anim@heists@ornate_bank@grab_cash", "bag_intro", 4.0, -8.0, 1)
	NetworkStartSynchronisedScene(cachedData["scene"])

	Citizen.Wait(1500)

	CashAppear()

	cachedData["scene"] = NetworkCreateSynchronisedScene(GetEntityCoords(trolleyObject), GetEntityRotation(trolleyObject), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, cachedData["scene"], "anim@heists@ornate_bank@grab_cash", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(cachedData["bag"], cachedData["scene"], "anim@heists@ornate_bank@grab_cash", "bag_grab", 4.0, -8.0, 1)
	NetworkAddEntityToSynchronisedScene(trolleyObject, cachedData["scene"], "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 4.0, -8.0, 1)

	NetworkStartSynchronisedScene(cachedData["scene"])

	Citizen.Wait(37000)

	cachedData["scene"] = NetworkCreateSynchronisedScene(GetEntityCoords(trolleyObject), GetEntityRotation(trolleyObject), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, cachedData["scene"], "anim@heists@ornate_bank@grab_cash", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(cachedData["bag"], cachedData["scene"], "anim@heists@ornate_bank@grab_cash", "bag_exit", 4.0, -8.0, 1)

	NetworkStartSynchronisedScene(cachedData["scene"])
	
	local newTrolley = CreateObject(emptyTrolley["model"], GetEntityCoords(trolleyObject) + vector3(0.0, 0.0, - 0.985), true)
	SetEntityRotation(newTrolley, GetEntityRotation(trolleyObject))
	
	while not NetworkHasControlOfEntity(trolleyObject) do
		Citizen.Wait(0)

		NetworkRequestControlOfEntity(trolleyObject)
	end

	DeleteObject(trolleyObject)
	PlaceObjectOnGroundProperly(newTrolley)
	
	Citizen.Wait(1900)

	DeleteObject(cachedData["bag"])
	ToggleBag(true)
	
	RemoveAnimDict("anim@heists@ornate_bank@grab_cash")
	SetModelAsNoLongerNeeded(emptyTrolley["model"])
	SetModelAsNoLongerNeeded(GetHashKey("hei_p_m_bag_var22_arm_s"))
end

RobberyThread = function(eventData)
	Citizen.CreateThread(function()
		cachedData["banks"][eventData["bank"]] = eventData["trolleys"]

		OpenDoor(eventData["bank"])

		local doorInformation = Config.Bank[eventData["bank"]]["door"]

		local doorEntity = GetClosestObjectOfType(doorInformation["pos"], 5.0, doorInformation["model"], false)

		while cachedData["banks"][eventData["bank"]] do
			local sleepThread = 500
			
			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)

			local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Bank[eventData["bank"]]["start"]["pos"], true)

			if dstCheck <= 20.0 then
				sleepThread = 5

				if not DoesEntityExist(doorEntity) then
					doorEntity = GetClosestObjectOfType(doorInformation["pos"], 5.0, doorInformation["model"], false)
				end

				if math.floor(GetEntityRotation(doorEntity)["z"]) ~= -80 then
					SetEntityRotation(doorEntity, 0, 0, -80.0, 2, 1)
				end

				for trolley, trolleyData in pairs(eventData["trolleys"]) do
					if NetworkDoesEntityExistWithNetworkId(trolleyData["net"]) then
						local dstCheck = #(pedCoords - GetEntityCoords(NetToObj(trolleyData["net"])))

						if dstCheck <= 1.5 then
							if Config.BlackMoney then
							ESX.ShowHelpNotification("~INPUT_DETONATE~ Toma ~r~dinero sucio ~s~de la ~y~bandeja")
							else
							ESX.ShowHelpNotification("~INPUT_DETONATE~ Toma ~g~dinero ~s~de la ~y~bandeja")
							end
							if IsControlJustPressed(0, 47) then
								GrabCash(trolleyData)
							end
						end
					end
				end
			end

			Citizen.Wait(sleepThread)
		end
	end)
end

HasItem = function()
	local playerInv = ESX.GetPlayerData()["inventory"]

	for index, item in ipairs(playerInv) do
		if item["name"] == Config.ItemNeeded then
			if item["count"] > 0 then
				return true
			end
		end
	end

	return false
end

ToggleBag = function(boolean)
    TriggerEvent("skinchanger:getSkin", function(skin)
        if skin.sex == 0 then
            local clothesSkin = {
                ["bags_1"] = 0,
                ["bags_2"] = 0,
            }

            if boolean then
                clothesSkin = {
                    ["bags_1"] = 45,
                    ["bags_2"] = 0,
                }
            end

            TriggerEvent("skinchanger:loadClothes", skin, clothesSkin)
        else
            local clothesSkin = {
                ["bags_1"] = 0,
                ["bags_2"] = 0,
            }

            TriggerEvent("skinchanger:loadClothes", skin, clothesSkin)
        end
    end)
end

DrawButtons = function(buttonsToDraw)
	Citizen.CreateThread(function()
		local instructionScaleform = RequestScaleformMovie("instructional_buttons")
	
		while not HasScaleformMovieLoaded(instructionScaleform) do
			Wait(0)
		end
	
		PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
		PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
		PushScaleformMovieFunctionParameterBool(0)
		PopScaleformMovieFunctionVoid()
	
		for buttonIndex, buttonValues in ipairs(buttonsToDraw) do
			PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
			PushScaleformMovieFunctionParameterInt(buttonIndex - 1)
	
			PushScaleformMovieMethodParameterButtonName(buttonValues["button"])
			PushScaleformMovieFunctionParameterString(buttonValues["label"])
			PopScaleformMovieFunctionVoid()
		end
	
		PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
		PushScaleformMovieFunctionParameterInt(-1)
		PopScaleformMovieFunctionVoid()
		DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)
	end)
end

DrawScriptMarker = function(markerData)
    DrawMarker(markerData["type"] or 1, markerData["pos"] or vector3(0.0, 0.0, 0.0), 0.0, 0.0, 0.0, (markerData["type"] == 6 and -90.0 or markerData["rotate"] and -180.0) or 0.0, 0.0, 0.0, markerData["sizeX"] or 1.0, markerData["sizeY"] or 1.0, markerData["sizeZ"] or 1.0, markerData["r"] or 1.0, markerData["g"] or 1.0, markerData["b"] or 1.0, 100, false, true, 2, false, false, false, false)
end

PlayAnimation = function(ped, dict, anim, settings)
	if dict then
        Citizen.CreateThread(function()
            RequestAnimDict(dict)

            while not HasAnimDictLoaded(dict) do
                Citizen.Wait(100)
            end

            if settings == nil then
                TaskPlayAnim(ped, dict, anim, 1.0, -1.0, 1.0, 0, 0, 0, 0, 0)
            else 
                local speed = 1.0
                local speedMultiplier = -1.0
                local duration = 1.0
                local flag = 0
                local playbackRate = 0

                if settings["speed"] then
                    speed = settings["speed"]
                end

                if settings["speedMultiplier"] then
                    speedMultiplier = settings["speedMultiplier"]
                end

                if settings["duration"] then
                    duration = settings["duration"]
                end

                if settings["flag"] then
                    flag = settings["flag"]
                end

                if settings["playbackRate"] then
                    playbackRate = settings["playbackRate"]
                end

                TaskPlayAnim(ped, dict, anim, speed, speedMultiplier, duration, flag, playbackRate, 0, 0, 0)
            end
      
            RemoveAnimDict(dict)
		end)
	else
		TaskStartScenarioInPlace(ped, anim, 0, true)
	end
end

LoadModels = function(models)
	for index, model in ipairs(models) do
		if IsModelValid(model) then
			while not HasModelLoaded(model) do
				RequestModel(model)
	
				Citizen.Wait(10)
			end
		else
			while not HasAnimDictLoaded(model) do
				RequestAnimDict(model)
	
				Citizen.Wait(10)
			end    
		end
	end
end

terkidan = function(thermiteID)
	Citizen.CreateThread(function()
		local thermiteFlash = NetworkGetEntityFromNetworkId(thermiteID)
		RequestNamedPtfxAsset("scr_ornate_heist")
		while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do
			Citizen.Wait(100)
		end	
		UseParticleFxAssetNextCall("scr_ornate_heist")
		StartParticleFxLoopedOnEntity("scr_heist_ornate_thermal_burn",thermiteFlash,0,1.0,0,0,0,0,1.0,false,false,false)
		StartParticleFxLoopedOnEntity("scr_heist_ornate_thermal_sparks",thermiteFlash,0,1.0,0,0,0,0,1.0,false,false,false)
		StartParticleFxLoopedOnEntity("scr_heist_ornate_thermal_glow",thermiteFlash,0,1.0,0,0,0,0,1.0,false,false,false)
		StartParticleFxLoopedOnEntity("sp_fbi_fire_trail_smoke",thermiteFlash,0,1.0,0,0,0,0,1.0,false,false,false)
		Citizen.Wait(7000)
		DeleteEntity(thermiteFlash)
		TriggerServerEvent('ir_force:bazsho', 261.58, 222.05, 106.28, 746855201)
	end)
end

thermite = function()
Citizen.CreateThread(function()
		local player = PlayerPedId()
		local coords = GetEntityCoords(player)
		if GetDistanceBetweenCoords(coords, vector3(261.58, 222.05, 106.28), true) <= 2.5 then
			SetEntityCoords(player, vector3(261.22, 221.9, 105.4))
			SetEntityHeading(player, 253.27)
			RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
			while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") do
				Wait(50)
			end
			RequestModel("hei_prop_heist_thermite")
			while not HasModelLoaded("hei_prop_heist_thermite") do
				Wait(50)
			end
			local thermite = CreateObject(GetHashKey("hei_prop_heist_thermite"), GetEntityCoords(player),  true,  true, true)
			AttachEntityToEntity(thermite, player, GetPedBoneIndex(GetPlayerPed(-1), 28422), 0, 0, 0, 0, 0, 175.0, true, true, false, true, 1, true)
			TaskPlayAnim(player,"anim@heists@ornate_bank@thermal_charge","thermal_charge", 0.8, 0.0, -1,0, 0, 0, 0, 0)
			blockKeys = true
			Citizen.Wait(5000)
			DetachEntity(thermite)
			FreezeEntityPosition(thermite,true)
			blockKeys = false
			TriggerServerEvent('ir_force:kashtan', NetworkGetNetworkIdFromEntity(thermite),746855201)
			Citizen.Wait(6000)
			ClearPedTasksImmediately(player)
		end
end)
end