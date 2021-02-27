Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = false 											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "Registro de Servidor" 							-- Bot Username
Config.avatar = "https://cdn.discordapp.com/attachments/670763523273654285/744702148557930516/usm2.png"				-- Bot Avatar
Config.communtiyName = "Usmekistan Roleplay"					-- Icon top of the Embed
Config.communtiyLogo = "https://cdn.discordapp.com/attachments/670763523273654285/744702148557930516/usm2.png"		-- Icon top of the Embed


Config.weaponLog = false 			-- set to false to disable the shooting weapon logs
Config.weaponLogDelay = 1000		-- delay to wait after someone fired a weapon to check again in ms (put to 0 to disable) Best to keep this at atleast 1000

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs


-- Change color of the default embeds here
-- It used Decimal color codes witch you can get and convert here: https://jokedevil.com/colorPicker
Config.joinColor = "3863105" 		-- Player Connecting
Config.leaveColor = "15874618"		-- Player Disconnected
Config.chatColor = "10592673"		-- Chat Message
Config.shootingColor = "10373"		-- Shooting a weapon
Config.deathColor = "000000"		-- Player Died
Config.resourceColor = "15461951"	-- Resource Stopped/Started



Config.webhooks = {
	--all = "https://ptb.discordapp.com/api/webhooks/745300861865164895/FvsNKXsCqkd1OHuy3vDWCR9NoHWiw9ZJMqBHuQkOfZm7peR4uvTUVTRtUPBAj7J_aJ8Z",
	--chat = "https://ptb.discordapp.com/api/webhooks/745300861865164895/FvsNKXsCqkd1OHuy3vDWCR9NoHWiw9ZJMqBHuQkOfZm7peR4uvTUVTRtUPBAj7J_aJ8Z",
	joins = "https://ptb.discordapp.com/api/webhooks/745300861865164895/FvsNKXsCqkd1OHuy3vDWCR9NoHWiw9ZJMqBHuQkOfZm7peR4uvTUVTRtUPBAj7J_aJ8Z",
	leaving = "https://ptb.discordapp.com/api/webhooks/745300861865164895/FvsNKXsCqkd1OHuy3vDWCR9NoHWiw9ZJMqBHuQkOfZm7peR4uvTUVTRtUPBAj7J_aJ8Z",
	deaths = "https://ptb.discordapp.com/api/webhooks/745300861865164895/FvsNKXsCqkd1OHuy3vDWCR9NoHWiw9ZJMqBHuQkOfZm7peR4uvTUVTRtUPBAj7J_aJ8Z",
	--shooting = "https://ptb.discordapp.com/api/webhooks/745300861865164895/FvsNKXsCqkd1OHuy3vDWCR9NoHWiw9ZJMqBHuQkOfZm7peR4uvTUVTRtUPBAj7J_aJ8Z",
	--resources = "https://ptb.discordapp.com/api/webhooks/745300861865164895/FvsNKXsCqkd1OHuy3vDWCR9NoHWiw9ZJMqBHuQkOfZm7peR4uvTUVTRtUPBAj7J_aJ8Z",

  -- You can add more logs by using exports in other resources
  -- When the action is done call the function below in the script to send the information to JD_logs
  -- exports.JD_logs:discord('<MESSAGE_YOU_WANT_TO_POST_IN_THE_EMBED>', '1752220', '<WEBHOOK_CHANNEL>')
  -- Then create a webhook for the action you just executed
  -- <YOUR NEW WEBHOOK NAME> = "<DISCORD_WEBHOOK>",
  }


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.1.0"
