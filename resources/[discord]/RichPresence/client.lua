ESX = nil
local jobGrade = ''
local job = ''
local playerName = nil
local PlayerData = {}
-- ESX Stuff----
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

function GetPlayers()
	local players = {}
	for _, player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
		players[#players + 1] = player
	end

	return #players
end

RegisterNetEvent('discord:client:setPresence')
AddEventHandler('discord:client:setPresence', function(_playerName)
	playerName = _playerName
	   SetRichPresence('ID: ' .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. ' | ' .. playerName)
	   
		Citizen.Wait(20000)

	   local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
		if VehName == "NULL" then VehName = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))) end
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
		local StreetHash = GetStreetNameAtCoord(x, y, z)
		local pId = GetPlayerServerId(PlayerId())
		local pName = GetPlayerName(PlayerId())
		Citizen.Wait(5000)
		if StreetHash ~= nil then
			StreetName = GetStreetNameFromHashKey(StreetHash)
			if IsPedOnFoot(PlayerPedId()) and not IsEntityInWater(PlayerPedId()) then
				local islandCoords = vector3(4840.571, -5174.425, 2.0)
				local pCoords = GetEntityCoords(PlayerPedId())

				if #(pCoords - islandCoords) < 2000.0 then
				SetRichPresence("ID: "..pId.." | ".. playerName .." está en Cayo Perico")

				else

				if IsPedSprinting(PlayerPedId()) then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está corriendo por "..StreetName)
				elseif IsPedRunning(PlayerPedId()) then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está corriendo por "..StreetName)
				elseif IsPedWalking(PlayerPedId()) then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está caminando por "..StreetName)
				elseif IsPedStill(PlayerPedId()) then
					if #(pCoords - islandCoords) < 2000.0 then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está en Cayo Perico")
		
					else
					SetRichPresence("ID: "..pId.." | ".. playerName .." está en "..StreetName)
					end
				end
			end
			elseif GetVehiclePedIsUsing(PlayerPedId()) ~= nil and not IsPedInAnyHeli(PlayerPedId()) and not IsPedInAnyPlane(PlayerPedId()) and not IsPedOnFoot(PlayerPedId()) and not IsPedInAnySub(PlayerPedId()) and not IsPedInAnyBoat(PlayerPedId()) then
				local MPH = math.ceil(GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId())) * 3.6)
				if MPH > 50 then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está conduciendo en "..StreetName.." a "..MPH.."KMH en un "..VehName)
				elseif MPH <= 50 and MPH > 0 then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está conduciendo en "..StreetName.." a "..MPH.."KMH en una "..VehName)
				elseif MPH == 0 then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está estácionado(a) en "..StreetName.." en un "..VehName)
				end
			elseif IsPedInAnyHeli(PlayerPedId()) or IsPedInAnyPlane(PlayerPedId()) then
				if IsEntityInAir(GetVehiclePedIsUsing(PlayerPedId())) or GetEntityHeightAboveGround(GetVehiclePedIsUsing(PlayerPedId())) > 5.0 then
					SetRichPresence("ID: "..pId.." | ".. playerName .." está volando sobre "..StreetName.." en un "..VehName)
				else
					SetRichPresence("ID: "..pId.." | ".. playerName .." está estácionado(a) en "..StreetName.." en un "..VehName)
				end
			elseif IsEntityInWater(PlayerPedId()) then
				SetRichPresence("ID: "..pId.." | ".. playerName .." está nadando")
			elseif IsPedInAnyBoat(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
				SetRichPresence("ID: "..pId.." | ".. playerName .." está navegando en un "..VehName)
			elseif IsPedInAnySub(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
				SetRichPresence("ID: "..pId.." | ".. playerName .." está en un submarino")
			end
		end

		Citizen.Wait(20000)
end)

Citizen.CreateThread(function()
	while true do			
			
			if PlayerData.job then
			 	--Setting players image to reflect their job
				SetDiscordRichPresenceAssetSmall(PlayerData.job.name)
				job = PlayerData.job.label
				jobGrade = PlayerData.job.grade_label
				--Setting the job text
				SetDiscordRichPresenceAssetSmallText(job .. " - " .. jobGrade)	
			else			
				Citizen.Wait(500)
			end	
						
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(Config.ClientID)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('logo')
		
		if Config.UseESXIdentity then			
			TriggerServerEvent(('discord:server:setName'))
		else
			SetRichPresence('ID: ' .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. ' | ' .. GetPlayerName(PlayerId()))

			--SetRichPresence('ID: ' .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. ' | ' .. GetPlayerName(PlayerId()) .. ' | ' ..' '.. Config.PlayerText ..' ' .. #GetActivePlayers() .. '/' .. tostring(Config.PlayerCount))
        end

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('discord.usmekistanrp.com')
	
        --It updates every five seconds just in case.
		Citizen.Wait(Config.ResourceTimer*1000)

		Citizen.Wait(40000)

	end
end)