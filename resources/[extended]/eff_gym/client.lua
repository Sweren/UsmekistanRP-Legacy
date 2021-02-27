ESX = nil
local onspor = false

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
      end
end)


-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Halteres.x,Config.Coords.Halteres.y, Config.Coords.Halteres.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Mancuernas"
			if dstCheck <= 0.65 then
				text = "Ejercitar con Mancuernas, Presiona la tecla[~g~E~s~] "
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Halteres()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Halteres, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Halteres2.x,Config.Coords.Halteres2.y, Config.Coords.Halteres2.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Mancuernas"
			if dstCheck <= 0.65 then
				text = "Ejercitar con Mancuernas, Presiona la tecla[~g~E~s~] "
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Halteres2()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Halteres2, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)
-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Tractions.x, Config.Coords.Tractions.y, Config.Coords.Tractions.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Dominadas"
			if dstCheck <= 0.65 then
				text = "Ejercita con Dominadas, Presiona la tecla[~g~E~s~]"
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Tractions()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Tractions, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Tractions2.x, Config.Coords.Tractions2.y, Config.Coords.Tractions2.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Dominadas"
			if dstCheck <= 0.65 then
				text = "Ejercita con Dominadas, Presiona la tecla[~g~E~s~]"
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Tractions2()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Tractions2, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)
-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.YogaYap.x, Config.Coords.YogaYap.y, Config.Coords.YogaYap.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Yoga"
			if dstCheck <= 0.65 then
				text = "Relajarse con yoga, Presiona la tecla[~g~E~s~]"
				if IsControlJustPressed(0, 38) then
					if not onspor then
            yogayap()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.YogaYap, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Abdos.x, Config.Coords.Abdos.y, Config.Coords.Abdos.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Abdominales"
			if dstCheck <= 0.65 then
				text = "Relajarse con yoga , Presiona la tecla [~g~E~s~] "
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Abdos()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Abdos, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)
-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Abdos2.x, Config.Coords.Abdos2.y, Config.Coords.Abdos2.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Abdominales"
			if dstCheck <= 0.65 then
				text = "Ejercitar con Abdominales , Presiona la tecla [~g~E~s~] "
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Abdos2()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Abdos2, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Pompes.x, Config.Coords.Pompes.y, Config.Coords.Pompes.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Flexiones"
			if dstCheck <= 0.65 then
				text = "Ejercitar con Flexiones, Presiona la tecla[~g~E~s~]"
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Pompes()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Pompes, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)
-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Pompes2.x, Config.Coords.Pompes2.y, Config.Coords.Pompes2.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Flexiones"
			if dstCheck <= 0.65 then
				text = "Ejercitar con Flexiones, Presiona la tecla[~g~E~s~]"
				if IsControlJustPressed(0, 38) then
					if not onspor then
            Pompes2()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Pompes2, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.Eau.x, Config.Coords.Eau.y, Config.Coords.Eau.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Máquina de agua"
			if dstCheck <= 0.65 then
				text = "Tomar agua, Presiona la tecla [~g~E~s~]"
				if IsControlJustPressed(0, 38) then
					if not onspor then
            		Eau()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.Eau, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)


-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
function Halteres()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.Halteres.h)
  SetEntityCoords(playerPed, Config.Coords.Halteres.x,Config.Coords.Halteres.y,Config.Coords.Halteres.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "kol_calis", duration = Config.Halterestemps * 1000, label = "Levantas mancuernas..."})
  Citizen.Wait(Config.Halterestemps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado', 5000)
  FreezeEntityPosition(playerPed, false)
  ClearPedTasksImmediately(playerPed)

  exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
  exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end

function Halteres2()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.Halteres2.h)
  SetEntityCoords(playerPed, Config.Coords.Halteres2.x,Config.Coords.Halteres2.y,Config.Coords.Halteres2.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "kol_calis", duration = Config.Halteres2temps * 1000, label = "Levantas mancuernas..."})
  Citizen.Wait(Config.Halteres2temps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado', 5000)
  FreezeEntityPosition(playerPed, false)
  ClearPedTasksImmediately(playerPed)

  exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
  exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end

function Tractions()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.Tractions.h)
  SetEntityCoords(playerPed, Config.Coords.Tractions.x,Config.Coords.Tractions.y,Config.Coords.Tractions.z-1.05)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "barfiks_cek", duration = Config.Tractionstemps * 1000, label = "Haces dominadas..."})
  Citizen.Wait(Config.Tractionstemps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado.', 5000)
  FreezeEntityPosition(playerPed, false)
	ClearPedTasksImmediately(playerPed)

	exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
end
-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
function Tractions2()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.Tractions2.h)
  SetEntityCoords(playerPed, Config.Coords.Tractions2.x,Config.Coords.Tractions2.y,Config.Coords.Tractions2.z-1.05)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "barfiks_cek", duration = Config.Tractions2temps * 1000, label = "Haces dominadas..."})
  Citizen.Wait(Config.Tractions2temps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado.', 5000)
  FreezeEntityPosition(playerPed, false)
	ClearPedTasksImmediately(playerPed)

	exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
	exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end

function yogayap()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.YogaYap.h)
  SetEntityCoords(playerPed, Config.Coords.YogaYap.x,Config.Coords.YogaYap.y,Config.Coords.YogaYap.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_yoga", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "yoga_c", duration = 20 * 1000, label = "Haces yoga..."})
  Citizen.Wait(20 * 1000)
  if Config.removestressonyoga then
    TriggerServerEvent('eff:onyoga', _source)
  end
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado.', 5000)
  FreezeEntityPosition(playerPed, false)
  ClearPedTasksImmediately(playerPed)

  exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
  exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end

function Abdos()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
	TriggerEvent("mythic_progbar:client:progress", {name = "mekik_cek", duration = Config.abdostemps * 1000, label = "Haces abdominales..."})
  Citizen.Wait(Config.abdostemps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado.', 5000)
  FreezeEntityPosition(playerPed, false)
	ClearPedTasksImmediately(playerPed)

	exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
end
-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
function Abdos2()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
	TriggerEvent("mythic_progbar:client:progress", {name = "mekik_cek", duration = Config.abdos2temps * 1000, label = "Haces abdominales..."})
  Citizen.Wait(Config.abdos2temps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado.', 5000)
  FreezeEntityPosition(playerPed, false)
	ClearPedTasksImmediately(playerPed)

	exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
	exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end

function Pompes()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.Pompes.h)
  SetEntityCoords(playerPed, Config.Coords.Pompes.x,Config.Coords.Pompes.y,Config.Coords.Pompes.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_push_ups", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "sinav_cek", duration = Config.Pompestemps * 1000, label = "Haces flexiones..."})
  Citizen.Wait(Config.Pompestemps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado.', 5000)
  onspor = false
  ClearPedTasksImmediately(playerPed)
  FreezeEntityPosition(playerPed, false)

  exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
  exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end

function Pompes2()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.Pompes2.h)
  SetEntityCoords(playerPed, Config.Coords.Pompes2.x,Config.Coords.Pompes2.y,Config.Coords.Pompes2.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_push_ups", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "sinav_cek", duration = Config.Pompes2temps * 1000, label = "Haces flexiones..."})
  Citizen.Wait(Config.Pompes2temps * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('eff:onspor', _source)
  end
  exports['mythic_notify']:SendAlert('inform', 'Tu sed ha aumentado.', 5000)
  onspor = false
  ClearPedTasksImmediately(playerPed)
  FreezeEntityPosition(playerPed, false)

  exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
  exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end
-- E.F.F. ©| Discord : https://discord.gg/y3v2SfP
function Eau()
  local _source = source
  local playerPed = PlayerPedId()
  SetEntityHeading(playerPed, Config.Coords.Eau.h)
    SetEntityCoords(playerPed, Config.Coords.Eau.x,Config.Coords.Eau.y,Config.Coords.Eau.z-0.95)
    local dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'
	Citizen.Wait(1000)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(1)
    end
    TaskPlayAnim(playerPed, dict, 'machinic_loop_mechandplayer', 8.0, -8.0, 5000, 1, 0, false, false, false)
    TriggerEvent("mythic_progbar:client:progress", {name = "su_al", duration = Config.eautemps * 1000, label = "Tomas agua..."})
    Citizen.Wait(Config.eautemps * 1000)
    TriggerServerEvent('eff:eau', _source)
	ClearPedTasksImmediately(playerPed)

	--exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.8)
	--exports["gamz-skillsystem"]:UpdateSkill("Strength", 1.6)
end

local blips = {
	{title="Gimnasio", colour=7, id=311, x = -56.15, y = -1283.86, z = 30.05}
}
	
Citizen.CreateThread(function()

	for _, info in pairs(blips) do
		info.blip = AddBlipForCoord(info.x, info.y, info.z)
		SetBlipSprite(info.blip, info.id)
		SetBlipDisplay(info.blip, 4)
		SetBlipScale(info.blip, 1.0)
		SetBlipColour(info.blip, info.colour)
		SetBlipAsShortRange(info.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(info.title)
		EndTextCommandSetBlipName(info.blip)
	end
end)