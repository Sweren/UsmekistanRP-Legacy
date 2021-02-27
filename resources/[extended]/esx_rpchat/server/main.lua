-- ############################################
-- --------------------------------------------
-- 3dme : /me command but its 3D printed
-- Author : Elio
-- Server side
-- --------------------------------------------
-- ############################################

-- --------------------------------------------
-- Functions
-- --------------------------------------------

-- OBJ : transform a table into a string (using spaces)
-- PARAMETERS :
--		- tab : the table to transform


-- --------------------------------------------
-- Commands
-- --------------------------------------------
--[[
RegisterCommand('me', function(source, args)
    local text = "* " .. TableToString(args) .. " *"
    local cmdtype = 'me'
     TriggerClientEvent('3dme:shareDisplay', -1, text, source, cmdtype)
end)

RegisterCommand('do', function(source, args)
    local text = "* " .. TableToString(args) .. " *"
    local cmdtype = 'do'
    TriggerClientEvent('3dme:shareDisplay', -1, text, source, cmdtype)
end)

--]]

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
















ESX                       = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)


function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
			
		}
	else
		return nil
	end
end
--[[
AddEventHandler('es:invalidCommandHandler', function(source, command_args, user)
	CancelEvent()
    TriggerClientEvent('chat:addMessage', source, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(115, 116, 119, 0.6); border-radius: 3px; margin-left: 0; margin-right: 0;"<i class="fas fa-exclamation-triangle"></i> ^3^*Comando Desconocido.^7 <br></div>',
        args = { }
    })
end, false)
--]]
--[[ AddEventHandler('chatMessage', function(source, name, message)
	local playerName = GetPlayerName(source)
	if string.sub(message,1,string.len("/"))=="/" then
	else
		TriggerClientEvent("sendProximityMessage", -1, source, name, " " .. message)
		TriggerEvent('Usmekistan:DiscordLog4', "Registro de OOC [Proximidad]", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..message.."\n᲼᲼᲼᲼᲼᲼",8421504)
	end
	CancelEvent()
end) ]]

 RegisterCommand('twt', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		
	local quantity = xPlayer.getInventoryItem('phone').count
	if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(28, 160, 242, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fab fa-twitter-square"></i> ^*@{1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})
	else
		TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	end
end, false)




RegisterCommand('atwt', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
        fal = name.firstname .. " " .. name.lastname
	local quantity = xPlayer.getInventoryItem('phone').count
	if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 110, 110, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">Twitter <i class="fab fa-twitter-square"></i> ^*@Anónimo:^r<br> {0}</div>',
        args = { msg }
	})
	TriggerEvent('Usmekistan:DiscordLog', "Registro de Tweet Anónimo", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..msg.."\n᲼᲼᲼᲼᲼᲼",16711680)
	else
		TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	end
end, false)
--

 RegisterCommand('taxi', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		
	if xPlayer.getJob().name == 'taxi' then
	--local quantity = xPlayer.getInventoryItem('phone').count
	-- quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 251, 33, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-taxi"></i> ^* TAXI | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})

	
end
end, false)



 RegisterCommand('emi', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 4
  	local name = getIdentity(source)
        fal = name.firstname .. " " .. name.lastname
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	if xPlayer.getJob().name == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(119,119,119, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-ambulance"></i> ^* EMI | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})
end
end, false)



 RegisterCommand('ponal', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		if xPlayer.getJob().name == 'police' then
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(42, 110, 66, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;"><i class="fas fa-landmark"></i> ^* POLICIA NACIONAL | {0}:^r<br> {1}</div>',
        args = { fal, msg }
	})

end
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)

RegisterCommand('fbi', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		if xPlayer.getJob().name == 'fbi' then
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(58, 1, 84, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-landmark"></i> ^* FBI | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})
end
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)


RegisterCommand('sheriff', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(8)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		if xPlayer.getJob().name == 'sheriff' then
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(161, 144, 47, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-landmark"></i> ^* SHERIFF | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})
end
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)




 RegisterCommand('meca', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		if xPlayer.getJob().name == 'mechanic' then
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(50, 199, 90, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-tools"></i> ^* MECÁNICO | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})
end
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)

RegisterCommand('prensa', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(7)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		if xPlayer.getJob().name == 'weazelnews' then
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(204, 0, 102, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-newspaper"></i> ^* PRENSA | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})
end
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)

RegisterCommand('concesionario', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(14)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
		fal = name.firstname .. " " .. name.lastname
		if xPlayer.getJob().name == 'vercetti' then
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 165, 0, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-car"></i> ^* CONCESIONARIO | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
	})
end
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)


RegisterCommand('001alc', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(7)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
        fal = name.firstname .. " " .. name.lastname
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 153, 51, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-flag-usa"></i> ^* ALCALDE | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
    })
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)

RegisterCommand('708cas', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(7)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 5
  	local name = getIdentity(source)
        fal = name.firstname .. " " .. name.lastname
	--local quantity = xPlayer.getInventoryItem('phone').count
	--if quantity > 0 then
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Banco', '~b~Se ha enviado un mensaje de Tweet', '~rSe tomaron ~w~5 ~g~$ ~w~Dolares ~r~de su cuenta de banco', 'CHAR_BANK_FLEECA', 9)
	--xPlayer.removeAccountMoney('bank', amount)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 153, 153, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-coins"></i> ^* CASINO | {1}:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
    })
	--else
		--TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	--end
end, false)


--[[
 RegisterCommand('darkweb', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(8)
    local name = getIdentity(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 50	
        fal = name.firstname .. " " .. name.lastname
		local quantity = xPlayer.getInventoryItem('phone').count
		if quantity > 0 then
	--xPlayer.removeAccountMoney('bank', amount)
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Bank', '~b~Platnosc Online', '~r~Wykryty anonimową płatnosc przez internet.', 'CHAR_BANK_FLEECA', 9)
	--TriggerClientEvent('esx:showAdvancedNotification', source, 'Anonim', '~b~Wysłano wiadomosc na DarkWEB', '~r~Zabrano ~w~50 ~g~$ ~w~Dolarów ~r~z konta bankowego', 'CHAR_LESTER_DEATHWISH', 9)
	
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(102, 0, 204, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-laptop"></i> ^*DarkWEB:^r<br> {2}</div>',
        args = { '['..source..'] ', fal, msg }
    })
	else
		TriggerClientEvent("pNotify:SendNotification", _source, {text = '¡No tienes tu teléfono contigo!'})
	end
end, false)--]]

 --[[ RegisterCommand('ogloszenie', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(11)
    local name = getIdentity(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local amount = 1	
	
		xPlayer.removeAccountMoney('bank', amount)
	TriggerClientEvent('esx:showAdvancedNotification', source, 'Bank', '~b~Wysłano ogłoszenie na Facebook', '~r~Zabrano ~w~1 ~g~$ ~w~Dolarów ~r~z konta bankowego', 'CHAR_FACEBOOK', 9)	
	
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(16, 142, 0, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-bullhorn"></i> ^*{1} ^rogłasza:<br> {2}<br></div>',
        args = { '['..source..'] ', fal, msg }
    })
end, false) ]]

 RegisterCommand('ooc', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    --TriggerClientEvent('chat:addMessage', -1, {
    --    template = '<div style="padding: 0.3vw; margin: 0.3vw; background-color: rgba(41, 41, 41, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-globe-europe"></i> ^*{1}:^r<br> {2}</div>',
    --    args = { '['..source..'] ', playerName, msg }
	--})
	
	--TriggerEvent('Usmekistan:DiscordLog4', "Registro de OOC [Global]", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..msg.."\n᲼᲼᲼᲼᲼᲼",8421504)
end, false)

 RegisterCommand('med', function(source, args, rawCommand)
    local name = getIdentity(source)
    local realName = name.firstname .. " " .. name.lastname
    TriggerClientEvent("sendProximityMessageMed", -1, source, realName, table.concat(args, " "))
end, false)


RegisterCommand('staff', function(source, args, rawCommand)
	local src = source 
	local player = GetPlayerName(source)
	local msg = table.concat(args, " ")
	local tag = ""
	local role = nil

	msg = firstToUpper(msg)
	
	exports['discordroles']:getUserRoles(src, function(cb)
		Wait(1000)
		for i,v in ipairs(cb) do
			if v == '752382309121917030' then role = 'PM'
			elseif v == '700801536481034371' then role = 'DEV'
			elseif v == '773368541000237056' then role = 'CM'
			elseif v == '715674139763146894' then role = 'SADMIN'
			elseif v == '756663328046186526' then role = 'DIS'
			elseif v == '724008852994916393' then role = 'ADMIN'
			end
		end
	end)

	while role == nil do 
		Citizen.Wait(100)
	end

	if role == 'PM' then
		tag = '| PROJECT MANAGER |'
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(131, 255, 248, 0.6); border-radius: 8px;"><center>^*<i class="fas fa-user-cog"></i> {0} <i class="fas fa-user-cog"></i><br>^r^_{1}^r</center><br>^r{2}</div>',
			args = { tag, player, '> '..msg }
		})

	elseif role == 'DEV' then
		tag = '| DESARROLLADOR |'
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(183,94,255, 0.6); border-radius: 8px;"><center>^*<i class="fas fa-user-cog"></i> {0} <i class="fas fa-user-cog"></i><br>^r^_{1}^r</center><br>^r{2}</div>',
			args = { tag, player, '> '..msg }
		})

	elseif role == 'CM' then 
		tag = '| COMMUNITY MANAGER |'
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(206,22,87, 0.6); border-radius: 8px;"><center>^*<i class="fas fa-user-shield"></i> {0} <i class="fas fa-user-shield"></i><br>^r^_{1}^r</center><br>^r{2}</div>',
			args = { tag, player, '> '..msg }
		})

	--[[ elseif role == 'SADMIN' then
		tag = 'Super Admin'
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(85, 255, 129, 0.6); border-radius: 8px;"><span style ="color: black"><i class="far fa-comment-dots"></i> {0} {1} [{2}]: {3}</span></div>',
			args = { tag, player, source, msg }
		})

	elseif role == 'DIS' then 
		tag = 'Diseñador'
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(85, 255, 129, 0.6); border-radius: 8px;"><span style ="color: black"><i class="far fa-comment-dots"></i> {0} {1} [{2}]: {3}</span></div>',
			args = { tag, player, source, msg }
		})

	elseif role == 'ADMIN' then 
		tag = 'Admin'
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(85, 255, 129, 0.6); border-radius: 8px;"><span style ="color: black"><i class="far fa-comment-dots"></i> {0} {1} [{2}]: {3}</span></div>',
			args = { tag, player, source, msg }
		}) ]]
	end
end, false)



RegisterCommand('ooc', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    --TriggerClientEvent('chat:addMessage', -1, {
    --    template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-globe-europe"></i> ^*{1}:^r<br> {2}</div>',
    --    args = { '['..source..'] ', playerName, msg }
	--})
	
	--TriggerEvent('Usmekistan:DiscordLog4', "Registro de OOC [Global]", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..msg.."\n᲼᲼᲼᲼᲼᲼",8421504)
end, false)



function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end

local function TableToString(tab)
	local str = ""
	for i = 1, #tab do
		str = str .. " " .. tab[i]
	end
	return str
end

--[[  RegisterCommand('me', function(source, args, rawCommand)
 	local text = "* " .. TableToString(args) .. " *"
	local cmdtype = 'me'
	local playerName = GetPlayerName(source)
    local name = getIdentity(source)
    local realName = name.firstname .. " " .. name.lastname
    TriggerClientEvent('3dme:shareDisplay', -1, text, source, cmdtype)
	TriggerClientEvent("sendProximityMessageMe", -1, source, realName, table.concat(args, " "))
	TriggerEvent('Usmekistan:DiscordLog5', "Registro de /me", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..text.."\n᲼᲼᲼᲼᲼᲼",16711680)
end, false) ]]

--[[   RegisterCommand('do', function(source, args, rawCommand)
	local name = getIdentity(source)
	local playerName = GetPlayerName(source)
    local realName = name.firstname .. " " .. name.lastname
       local text = "* " .. TableToString(args) .. " *"
    local cmdtype = 'do'
    TriggerClientEvent('3dme:shareDisplay', -1, text, source, cmdtype)
	TriggerClientEvent("sendProximityMessageDo", -1, source, realName, table.concat(args, " "))
	TriggerEvent('Usmekistan:DiscordLog3', "Registro de /do", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..text.."\n᲼᲼᲼᲼᲼᲼",6950317)
end, false) ]]

RegisterCommand('tirar', function(source, args, rawCommand)
    local name = getIdentity(source)
	local realName = name.firstname .. " " .. name.lastname
	local dado = math.random(1, 6)
	local pre = test
    TriggerClientEvent("sendProximityMessageTirar", -1, source, realName, table.concat({ "Tiraría un dado, saldría: ", dado}))
end, false)


    

RegisterCommand('me', function(source, args, rawCommand)
	local players = ESX.GetPlayers()

	local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()

	local text = "* " .. TableToString(args) .. " *"
	local msg = TableToString(args)
	local cmdtype = 'me'
	local playerName = GetPlayerName(source)

    TriggerClientEvent('3dme:shareDisplay', -1, text, source, cmdtype)
	TriggerEvent('Usmekistan:DiscordLog5', "Registro de /me", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..msg.."\n᲼᲼᲼᲼᲼᲼",16711680)

for k,v in ipairs(players) do
    local targetPed = GetPlayerPed(v)
    --print(('A player with server id %s found at %s!'):format(GetPlayerPed(v), GetEntityCoords(targetPed)))

   -- local playerPed = PlayerPedId()
	local playerCoords = GetEntityCoords(GetPlayerPed(source))
	local targetCoords = GetEntityCoords(GetPlayerPed(v))
    
    --print(playerCoords,targetCoords)

	 if #(playerCoords - targetCoords) < 20 then
		  TriggerClientEvent('chat:addMessage', v, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 80, 80, 0.6); border-radius: 8%; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
        args = { '['..source..'] ', name, msg }
    })
    end
end
end, false)

RegisterCommand('do', function(source, args, rawCommand)
	local players = ESX.GetPlayers()

	local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()

	local text = "* " .. TableToString(args) .. " *"
	local msg = TableToString(args)
	local cmdtype = 'do'
	local playerName = GetPlayerName(source)

    TriggerClientEvent('3dme:shareDisplay', -1, text, source, cmdtype)
	TriggerEvent('Usmekistan:DiscordLog3', "Registro de /do", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..text.."\n᲼᲼᲼᲼᲼᲼",6950317)

for k,v in ipairs(players) do
    local targetPed = GetPlayerPed(v)
    --print(('A player with server id %s found at %s!'):format(GetPlayerPed(v), GetEntityCoords(targetPed)))

   -- local playerPed = PlayerPedId()
	local playerCoords = GetEntityCoords(GetPlayerPed(source))
	local targetCoords = GetEntityCoords(GetPlayerPed(v))
    
    --print(playerCoords,targetCoords)

	 if #(playerCoords - targetCoords) < 20 then
		TriggerClientEvent('chat:addMessage', v, {
			template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 0, 255, 0.6); border-radius: 8%; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-plus-square"></i> @{1}:<br> {2}</div>',
			args = { '['..source..'] ', name, msg }
		})
    end
end
end, false) 

AddEventHandler('chatMessage', function(source, name, message)
	local playerName = GetPlayerName(source)
	if string.sub(message,1,string.len("/"))=="/" then
	else
		local players = ESX.GetPlayers()

		local playerName = GetPlayerName(source)
	
		TriggerEvent('Usmekistan:DiscordLog4', "Registro de OOC [Proximidad]", "᲼᲼᲼᲼᲼᲼\n**"..playerName.."**: "..message.."\n᲼᲼᲼᲼᲼᲼",8421504)
	
	for k,v in ipairs(players) do
		local targetPed = GetPlayerPed(v)
		--print(('A player with server id %s found at %s!'):format(GetPlayerPed(v), GetEntityCoords(targetPed)))
	
	   -- local playerPed = PlayerPedId()
		local playerCoords = GetEntityCoords(GetPlayerPed(source))
		local targetCoords = GetEntityCoords(GetPlayerPed(v))
		
		--print(playerCoords,targetCoords)
	
		 if #(playerCoords - targetCoords) < 20 then
			TriggerClientEvent('chat:addMessage', v, {
				template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px; margin-left: 0; margin-right: 0;"<i class="fas fa-user"></i> ^*[ LOCAL OOC ] {1}^r {2}</div>',
				args = { '['..source..'] ', playerName, message }
			})
		end
	end

		
	end
	CancelEvent()
end)

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end