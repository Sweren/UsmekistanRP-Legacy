-- Made by Tazio

local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/769253814816735263/ORVUeHV0AQdyKCL9EGAzHiWpNvMvwuLNo8u_OtG7w8pAHjzh0Nj-1wMSL7CtNfYoERwO"
local DISCORD_NAME = "Usmekistan Logs"
local STEAM_KEY = "38D577C5FDC22D74AFC2AE91FD77DEC0"
local DISCORD_IMAGE = "https://cdn.discordapp.com/attachments/670763523273654285/769252890673545312/usm.png" -- default is FiveM logo

--DON'T EDIT BELOW THIS

--PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, content = "Discord Webhook is **ONLINE**", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })

--[[ AddEventHandler('chatMessage', function(source, name, message) 

	if string.match(message, "@everyone") then
		message = message:gsub("@everyone", "`@everyone`")
	end
	if string.match(message, "@here") then
		message = message:gsub("@here", "`@here`")
	end
	--print(tonumber(GetIDFromSource('steam', source), 16)) -- DEBUGGING
	--print('https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=' .. STEAM_KEY .. '&steamids=' .. tonumber(GetIDFromSource('steam', source), 16))
	if STEAM_KEY == '' or STEAM_KEY == nil then
		PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = name .. " [" .. source .. "]", content = message, tts = false}), { ['Content-Type'] = 'application/json' })
	else
		PerformHttpRequest('https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=' .. STEAM_KEY .. '&steamids=' .. tonumber(GetIDFromSource('steam', source), 16), function(err, text, headers)
			local image = string.match(text, '"avatarfull":"(.-)","')
			--print(image) -- DEBUGGING
			PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = name .. " [" .. source .. "]", content = message, avatar_url = image, tts = false}), { ['Content-Type'] = 'application/json' })
		end)
	end
end)

AddEventHandler('playerConnecting', function() 
    --PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, content = "```CSS\n".. GetPlayerName(source) .. " connecting\n```", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
    sendToDiscord("Server Login", "**" .. GetPlayerName(source) .. "** is connecting to the server.", 65280)
end)

AddEventHandler('playerDropped', function(reason) 
	local color = 16711680
	if string.match(reason, "Kicked") or string.match(reason, "Banned") then
		color = 16007897
	end
  sendToDiscord("Server Logout", "**" .. GetPlayerName(source) .. "** has left the server. \n Reason: " .. reason, color)
end)

RegisterServerEvent('playerDied')
AddEventHandler('playerDied',function(message)
    sendToDiscord("Death log", message, 16711680)
end) ]]

function GetIDFromSource(Type, ID) --(Thanks To WolfKnight [forum.FiveM.net])
    local IDs = GetPlayerIdentifiers(ID)
    for k, CurrentID in pairs(IDs) do
        local ID = stringsplit(CurrentID, ':')
        if (ID[1]:lower() == string.lower(Type)) then
            return ID[2]:lower()
        end
    end
    return nil
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

function sendToDiscord(title, message, color)
  local connect = {
        {
            ["color"] = color,
            ["title"] = "**".. title .."**",
            ["description"] = message,
            ["footer"] = {
			["text"] = "Usmekistan Roleplay | "..os.date("%x %X %p").."",
			["icon_url"] = "https://cdn.discordapp.com/attachments/670763523273654285/769259046657720361/usm2.png",
            },
        }
    }
  PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end

function sendToDiscord2(title, message, color)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. title .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = "Usmekistan Roleplay | "..os.date("%x %X %p").."",
			  ["icon_url"] = "https://cdn.discordapp.com/attachments/670763523273654285/769259046657720361/usm2.png",
			  },
		  }
	  }
	PerformHttpRequest('https://discord.com/api/webhooks/771425537541275668/5zxXaUs18XP8qnahIX35TJr9vTSKcG9K-3a-mbvyO7i0h_182ogjaSaM7guWkOEm_moL', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
  end

  function sendToDiscord3(title, message, color)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. title .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = "Usmekistan Roleplay | "..os.date("%x %X %p").."",
			  ["icon_url"] = "https://cdn.discordapp.com/attachments/670763523273654285/769259046657720361/usm2.png",
			  },
		  }
	  }
	PerformHttpRequest('https://discord.com/api/webhooks/781411738628128778/aVzcti5-o1f64F85GR4Gr8oLcBJmjGTnSD8uQq_lY9YToQZO6dPABNHn8w6strKk834L', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
  end

  function sendToDiscord4(title, message, color)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. title .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = "Usmekistan Roleplay | "..os.date("%x %X %p").."",
			  ["icon_url"] = "https://cdn.discordapp.com/attachments/670763523273654285/769259046657720361/usm2.png",
			  },
		  }
	  }
	PerformHttpRequest('https://discord.com/api/webhooks/788350960338206760/LVUVmV2jVGBxshq_alWTA2A3viRhXzqI51cXGH2OE4Cr470VB7VZqjLzSP2zeCMKXGk6', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
  end

  function sendToDiscord5(title, message, color)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. title .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = "Usmekistan Roleplay | "..os.date("%x %X %p").."",
			  ["icon_url"] = "https://cdn.discordapp.com/attachments/670763523273654285/769259046657720361/usm2.png",
			  },
		  }
	  }
	PerformHttpRequest('https://discord.com/api/webhooks/788351048611659786/jQdqdXBFdujViJKIKxKUNjUGpB74buz1OOJ5bSKNCS0M5zIQ2jxSbgPcwd6EIYonRIRs', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
  end

  function sendToDiscord6(title, message, color)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. title .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = "Usmekistan Roleplay | "..os.date("%x %X %p").."",
			  ["icon_url"] = "https://cdn.discordapp.com/attachments/670763523273654285/769259046657720361/usm2.png",
			  },
		  }
	  }
	PerformHttpRequest('https://discordapp.com/api/webhooks/790397258713661491/0FFXAWEkUKs6r5gbZzqiIQXS-em1i7UFULQx2Ria9KcCUunx01So4_tyipcJaF6e9H3a', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
  end

  function sendToDiscordGeneral(webhook, title, message, color)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. title .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = "Usmekistan Roleplay | "..os.date("%x %X %p").."",
			  ["icon_url"] = "https://cdn.discordapp.com/attachments/670763523273654285/769259046657720361/usm2.png",
			  },
		  }
	  }
	PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
  end


RegisterNetEvent('Usmekistan:DiscordLog')
AddEventHandler('Usmekistan:DiscordLog', function(title, message, color)
	sendToDiscord(title, message, color)
end)

RegisterNetEvent('Usmekistan:DiscordLog2')
AddEventHandler('Usmekistan:DiscordLog2', function(title, message, color)
	sendToDiscord2(title, message, color)
end)

RegisterNetEvent('Usmekistan:DiscordLog3')
AddEventHandler('Usmekistan:DiscordLog3', function(title, message, color)
	sendToDiscord3(title, message, color)
end)

RegisterNetEvent('Usmekistan:DiscordLog4')
AddEventHandler('Usmekistan:DiscordLog4', function(title, message, color)
	sendToDiscord4(title, message, color)
end)

RegisterNetEvent('Usmekistan:DiscordLog5')
AddEventHandler('Usmekistan:DiscordLog5', function(title, message, color)
	sendToDiscord5(title, message, color)
end)

RegisterNetEvent('Usmekistan:DiscordLog6')
AddEventHandler('Usmekistan:DiscordLog6', function(title, message, color)
	sendToDiscord6(title, message, color)
end)

RegisterNetEvent('Usmekistan:DiscordLogGeneral')
AddEventHandler('Usmekistan:DiscordLogGeneral', function(webhook, title, message, color)
	sendToDiscordGeneral(webhook, title, message, color)
end)