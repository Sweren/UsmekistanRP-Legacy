ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- ############################################
-- --------------------------------------------
-- 3dme : /me command but its 3D printed
-- Author : Elio
-- Client side
-- --------------------------------------------
-- ############################################

-- --------------------------------------------
-- Settings
-- --------------------------------------------

local defaultScale = 0.6 -- Text scale
local color = { r = 255, g = 80, b = 80, a = 255 } -- Text color
local colordo = { r = 255, g = 0, b = 255, a = 255 } -- Text color
local font = 2 -- Text font
local displayTime = 12000 -- Duration to display the text (in ms)
local distToDraw = 150 -- Min. distance to draw 

-- --------------------------------------------
-- Variable
-- --------------------------------------------

local pedDisplaying = {}

-- --------------------------------------------
-- Functions
-- --------------------------------------------

-- OBJ : draw text in 3d
-- PARAMETERS :
--      - coords : world coordinates to where you want to draw the text
--      - text : the text to display
local function DrawText3D(coords, text, rptype)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)
    
    -- Experimental math to scale the text down
    local scale = 200 / (GetGameplayCamFov() * dist)

    --if onScreen then

        -- Format the text
        if rptype == "me" then
            SetTextColour(color.r, color.g, color.b, color.a)
        else
            SetTextColour(colordo.r, colordo.g, colordo.b, colordo.a)
        end
        SetTextScale(0.0, defaultScale * scale)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextDropShadow()
        SetTextCentre(true)

        -- Diplay the text
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        SetDrawOrigin(coords, 0)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()

    --end
end

-- OBJ : handle the drawing of text above a ped head
-- PARAMETERS :
--      - coords : world coordinates to where you want to draw the text
--      - text : the text to display
local function Display(ped, text, rptype)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(ped)
    local dist = #(playerCoords - pedCoords)

    if dist <= distToDraw then

        pedDisplaying[ped] = (pedDisplaying[ped] or 1) + 1

        -- Timer
        local display = true

        Citizen.CreateThread(function()
            Wait(displayTime)
            display = false
        end)

        -- Display
        local offset = 0.8 + pedDisplaying[ped] * 0.1
        while display do
            if HasEntityClearLosToEntity(playerPed, ped, 17 ) then
                local x, y, z = table.unpack(GetEntityCoords(ped))
                z = z + offset
                DrawText3D(vector3(x, y, z), text, rptype)
            end
            Wait(0)
        end

        pedDisplaying[ped] = pedDisplaying[ped] - 1

    end
end

-- --------------------------------------------
-- Event
-- --------------------------------------------

--[[ RegisterNetEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text, serverId, cmdtype)
    local ped = GetPlayerPed(GetPlayerFromServerId(serverId))
    local rptype = cmdtype
    Display(ped, text, rptype)
end) ]]

RegisterNetEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text, serverId, cmdtype)
    local player = GetPlayerFromServerId(serverId)
    local rptype = cmdtype
    if player ~= -1 then
        local ped = GetPlayerPed(player)
        Display(ped, text, rptype)
    end
end)











RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
--[[   local player = PlayerId()
	local target = GetPlayerFromServerId(id)

	local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

	if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px; margin-left: 0; margin-right: 0;"<i class="fas fa-user"></i> ^*[ LOCAL OOC ] {1}^r {2}</div>',
      args = { '['..id..'] ', name, message }
  })
  end ]]

  local player = PlayerId()
  --local target = GetPlayerFromServerId(id)
  local players = ESX.Game.GetPlayers()

for k,v in ipairs(players) do
    local targetPed = GetPlayerPed(v)
    --print(('A player with server id %s found at %s!'):format(GetPlayerServerId(v), GetEntityCoords(targetPed)))

    local playerPed = PlayerPedId()
    local playerCoords, targetCoords = GetEntityCoords(PlayerPedId()), GetEntityCoords(GetPlayerPed(v))
    
    --print(playerCoords,targetCoords)

	  if #(playerCoords - targetCoords) < 20 and #(playerCoords - targetCoords) > 1 then
		  TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px; margin-left: 0; margin-right: 0;"<i class="fas fa-user"></i> ^*[ LOCAL OOC ] {1}^r {2}</div>',
        args = { '['..id..'] ', name, message }
    })
    end
end
    
  
end)


RegisterNetEvent('esx_dobrychat:sendProximityMessageTask')
AddEventHandler('esx_dobrychat:sendProximityMessageTask', function(id, message, color)
	local source = PlayerId()
	local target = GetPlayerFromServerId(id)

	if target == source then
		TriggerEvent('chat:addMessage', { args = { message }, color = color })
	elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(source)), GetEntityCoords(GetPlayerPed(target)), true) < 50 then
		TriggerEvent('chat:addMessage', { args = { message }, color = color })
	end
end)

RegisterNetEvent('sendProximityMessageDo')
AddEventHandler('sendProximityMessageDo', function(id, name, message)
--[[   local player = PlayerId()
	local target = GetPlayerFromServerId(id)

	local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

	if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 0, 255, 0.6); border-radius: 8%; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
      args = { '['..id..'] ', name, message }
  })
  end ]]

  local player = PlayerId()
  --local target = GetPlayerFromServerId(id)
  local players = ESX.Game.GetPlayers()

for k,v in ipairs(players) do
    local targetPed = GetPlayerPed(v)
    --print(('A player with server id %s found at %s!'):format(GetPlayerServerId(v), GetEntityCoords(targetPed)))

    local playerPed = PlayerPedId()
    local playerCoords, targetCoords = GetEntityCoords(PlayerPedId()), GetEntityCoords(GetPlayerPed(v))
    
    --print(playerCoords,targetCoords)

	  if #(playerCoords - targetCoords) < 20 and #(playerCoords - targetCoords) > 1 then
		  TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 0, 255, 0.6); border-radius: 8%; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
        args = { '['..id..'] ', name, message }
    })
    end

end
end)

RegisterNetEvent('sendProximityMessageTirar')
AddEventHandler('sendProximityMessageTirar', function(id, name, message)
--[[   local player = PlayerId()
	local target = GetPlayerFromServerId(id)

	local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

	if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 153, 51, 0.6); border-radius: 16%; margin-left: 0; margin-right: 0;">{0}<i class="fas fas fa-dice"></i> @{1}:<br> {2}</div>',
      args = { '['..id..'] ', name, message }
  })
  end ]]

  local player = PlayerId()
  --local target = GetPlayerFromServerId(id)
  local players = ESX.Game.GetPlayers()

for k,v in ipairs(players) do
    local targetPed = GetPlayerPed(v)
    --print(('A player with server id %s found at %s!'):format(GetPlayerServerId(v), GetEntityCoords(targetPed)))

    local playerPed = PlayerPedId()
    local playerCoords, targetCoords = GetEntityCoords(PlayerPedId()), GetEntityCoords(GetPlayerPed(v))
    
    --print(playerCoords,targetCoords)

	  if #(playerCoords - targetCoords) < 20 and #(playerCoords - targetCoords) > 1 then
		  TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 153, 51, 0.6); border-radius: 16%; margin-left: 0; margin-right: 0;">{0}<i class="fas fas fa-dice"></i> @{1}:<br> {2}</div>',
        args = { '['..id..'] ', name, message }
    })
    end
end
    
end)


RegisterNetEvent('sendProximityMessageMe')
AddEventHandler('sendProximityMessageMe', function(id, name, message)
--[[   local player = PlayerId()
	local target = GetPlayerFromServerId(id)

	local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
  local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)
  
  print(playerCoords)
  print(targetCoords)

	if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 80, 80, 0.6); border-radius: 8%; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
      args = { '['..id..'] ', name, message }
  })
  end ]]

  local player = PlayerId()
  --local target = GetPlayerFromServerId(id)
  local players = ESX.Game.GetPlayers()

for k,v in ipairs(players) do
    local targetPed = GetPlayerPed(v)
    --print(('A player with server id %s found at %s!'):format(GetPlayerServerId(v), GetEntityCoords(targetPed)))

    local playerPed = PlayerPedId()
    local playerCoords, targetCoords = GetEntityCoords(PlayerPedId()), GetEntityCoords(GetPlayerPed(v))
    
   -- print(playerCoords,targetCoords)

	  if #(playerCoords - targetCoords) < 20 and #(playerCoords - targetCoords) > 1 then
		  TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 80, 80, 0.6); border-radius: 8%; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
        args = { '['..id..'] ', name, message }
    })
    end
end
    
end)


RegisterNetEvent('sendProximityMessageMed')
AddEventHandler('sendProximityMessageMed', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(196, 1, 1, 0.6); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
        args = { '['..id..'] ', name, message }
    })
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(196, 1, 1, 0.6); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
        args = { '['..id..'] ', name, message }
    })
  end
end)

TriggerEvent('chat:addSuggestion', '/twt', 'Envia un tweet')
TriggerEvent('chat:addSuggestion', '/atwt', 'Envia un tweet anónimo')
TriggerEvent('chat:addSuggestion', '/entorno', 'Envia un /entorno')
TriggerEvent('chat:addSuggestion', '/me', 'Envia un /me')
TriggerEvent('chat:addSuggestion', '/do', 'Envia un /do')