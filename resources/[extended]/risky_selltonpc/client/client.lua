ESX = nil
selldrugs = false
local hasdrugs = false
local TSE = TriggerServerEvent

Citizen.CreateThread(function()
  	while ESX == nil do
    	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    	Citizen.Wait(250)
  	end

  	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(250)
	end
	
	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	Citizen.Wait(5000)
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)

		if ped1 ~= 0 then 
			if not IsPedDeadOrDying(ped1) and not IsPedInAnyVehicle(ped1) then
                        local pType = GetPedType(ped1)
				if ped1 ~= ped2 and not selldrugs and (IsPedAPlayer(ped1) == false and pType ~= 28) then
					TSE('countdrug')  --Checks to make sure they have drugs
					if hasdrugs then
						local pos = GetEntityCoords(ped1)
						DrawText3Ds(pos.x, pos.y, pos.z, 'Presiona ~g~E~w~ para vender drogas')
						if IsControlJustPressed(1, 86) then
							selldrugs = true
							process()
						end
					end
				end
			else
				Citizen.Wait(500)
			end
		else
			Citizen.Wait(500)	
		end
	end
end)

RegisterNetEvent('confirmcount') --Confirms that they have drugs
AddEventHandler('confirmcount', function(confirm)
  hasdrugs = confirm
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)

		local playerPed = GetPlayerPed(-1)

		if not IsPedInAnyVehicle(playerPed) or not IsPedDeadOrDying(playerPed) then
			ped1 = GetPedInFront()
		else
			Citizen.Wait(500)
		end
    end
end)

function GetPedInFront()
	local player = PlayerId()
	local pPed = GetPlayerPed(player)
	local pPos = GetEntityCoords(pPed, false)
	local pOffset = GetOffsetFromEntityInWorldCoords(pPed, 0.0, 1.3, 0.0)
	local rPed = StartShapeTestCapsule(pPos.x, pPos.y, pPos.z, pOffset.x, pOffset.y, pOffset.z, 1.0, 12, pPed, 7)
	local _, _, _, _, ped1 = GetShapeTestResult(rPed)
	return ped1
end

function process()

	ped2 = ped1
	SetEntityAsMissionEntity(ped1)
	TaskStandStill(ped1, 9.0)

	exports['progressBars']:startUI(3500, " Ofreciendo drogas... ")	  --Remove this if you don't use pogressBars
	Citizen.Wait(Risky.TTS * 1000)
	
	if ESX.PlayerData.job.name == 'police' then
		exports['mythic_notify']:DoCustomHudText('error', 'Tu tapadera se ha descubierto, saben que trabajas para la policía', 4000)  --If anoyone wants any specific notification system to be used, I can put something in the readme later on how to change it.
		SetPedAsNoLongerNeeded(ped2)
		selldrugs = false
		return
	end

	if ped1 ~= ped2 then
		exports['mythic_notify']:DoCustomHudText('error', 'Tu cliente se ha puesto muy nervioso y se ha ido.', 5000)
		SetPedAsNoLongerNeeded(ped2)
		selldrugs = false
		return
	end

	local add = Risky.Chance.NotI + Risky.Chance.Sell + Risky.Chance.CalC
	local percent = math.random(1, add)

	if percent <= Risky.Chance.NotI then
		exports['mythic_notify']:DoCustomHudText('error', 'Nadie está interesado.', 4000)
	elseif percent <= Risky.Chance.NotI + Risky.Chance.Sell then
		TriggerEvent("animation", source)
		Citizen.Wait(1500)
		TSE('risky_selltonpc:dodeal')
	elseif Risky.CallCops then
		exports['mythic_notify']:DoCustomHudText('inform', 'Deshazte de las drogas y escapa. ¡Han llamando a la policía! ', 4000)
		SellFail()
	end
	
	selldrugs = false
	SetPedAsNoLongerNeeded(ped2)
end

RegisterNetEvent('animation')  --Does the cool handshake thingy
AddEventHandler('animation', function()
  local pid = PlayerPedId()
  RequestAnimDict("special_ped@jane@monologue_5@monologue_5c")
  while (not HasAnimDictLoaded("special_ped@jane@monologue_5@monologue_5c")) do Citizen.Wait(0) end
	TaskPlayAnim(pid,"special_ped@jane@monologue_5@monologue_5c","brotheradrianhasshown_2",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
	TaskPlayAnim(ped1,"special_ped@jane@monologue_5@monologue_5c","brotheradrianhasshown_2",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
    Wait(1500)
	StopAnimTask(pid, "special_ped@jane@monologue_5@monologue_5c","brotheradrianhasshown_2", 1.0)
	StopAnimTask(ped1, "special_ped@jane@monologue_5@monologue_5c","brotheradrianhasshown_2", 1.0)
end)

function SellFail()  --Sends a message to the PoPo
    local coords = GetEntityCoords(GetPlayerPed(-1))

    TSE('esx_phone:send', "police", '10-66 Persona sospechosa vista intentando vender drogas. Lugar:' , true, {
    	x = coords.x,
        y = coords.y,
        z = coords.z
	})
	
	ExecuteCommand('entorno 10-66 Persona sospechosa vista intentando vender drogas')
end

function DrawText3Ds(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
end

--[[
-- Joint
RegisterNetEvent('esx_drugeffects:onJoint')
AddEventHandler('esx_drugeffects:onJoint', function()
  
  local playerPed = GetPlayerPed(-1)
  
    RequestAnimSet("move_m@hipster@a") 
    while not HasAnimSetLoaded("move_m@hipster@a") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    exports['pogressBar']:drawBar(3000, 'Relieving Stress...')
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)	
end)

--Weed
RegisterNetEvent('esx_drugeffects:onWeed')
AddEventHandler('esx_drugeffects:onWeed', function()
  
  local playerPed = GetPlayerPed(-1)
  
    RequestAnimSet("move_m@hipster@a") 
    while not HasAnimSetLoaded("move_m@hipster@a") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    exports['pogressBar']:drawBar(3000, 'Smoking Weed...')
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    
    --Efects
    local player = PlayerId()
    AddArmourToPed(playerPed, 20)
    local health = GetEntityHealth(playerPed)
    local newHealth = math.min(maxHealth , math.floor(health + maxHealth/6))
    SetEntityHealth(playerPed, newHealth)
    
end)

--Opium
RegisterNetEvent('esx_drugeffects:onOpium')
AddEventHandler('esx_drugeffects:onOpium', function()
  
  local playerPed = GetPlayerPed(-1)
  
        RequestAnimSet("move_m@drunk@moderatedrunk") 
    while not HasAnimSetLoaded("move_m@drunk@moderatedrunk") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    exports['pogressBar']:drawBar(8000, 'Pushing The Needle...')
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    
    --Efects
    local player = PlayerId()
    AddArmourToPed(playerPed, 45)
    local health = GetEntityHealth(playerPed)
    local newHealth = math.min(maxHealth , math.floor(health + maxHealth/6))
    SetEntityHealth(playerPed, newHealth)
    
 end)

--Meth
RegisterNetEvent('esx_drugeffects:onMeth')
AddEventHandler('esx_drugeffects:onMeth', function()
  
  local playerPed = GetPlayerPed(-1)
  local maxHealth = GetEntityMaxHealth(playerPed)

        RequestAnimSet("move_injured_generic") 
    while not HasAnimSetLoaded("move_injured_generic") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    exports['pogressBar']:drawBar(6000, 'Bumping A Teenth...')
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    
   --Efects
   local player = PlayerId()
   SetRunSprintMultiplierForPlayer(player, 1.2)
   SetSwimMultiplierForPlayer(player, 1.3)

   Wait(520000)

   SetRunSprintMultiplierForPlayer(player, 1.0)
   SetSwimMultiplierForPlayer(player, 1.0)
end)


--Coke
RegisterNetEvent('esx_drugeffects:onCoke')
AddEventHandler('esx_drugeffects:onCoke', function()
  
  local playerPed = GetPlayerPed(-1)
  local maxHealth = GetEntityMaxHealth(playerPed)

        RequestAnimSet("move_m@hurry_butch@a") 
    while not HasAnimSetLoaded("move_m@hurry_butch@a") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    exports['pogressBar']:drawBar(5000, 'Smoking Cocaine...')
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    
    --Efects
    local player = PlayerId()
    SetRunSprintMultiplierForPlayer(player, 1.48)
        
    Wait(450000)

    SetRunSprintMultiplierForPlayer(player, 1.0)
end)
]]--
