ESX = nil
local playerIdentity = {}
local alreadyRegistered = {}
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


	AddEventHandler('playerConnecting', function(playerName, setKickReason, deferrals)
		deferrals.defer()
		local playerId, identifier = source
		Citizen.Wait(100)

		for k,v in ipairs(GetPlayerIdentifiers(playerId)) do
			if string.match(v, 'steam:') then
				identifier = v
				break
			end
		end

		if identifier then
			MySQL.Async.fetchAll('SELECT firstname, lastname, dateofbirth, sex, height FROM users WHERE identifier = @identifier', {
				['@identifier'] = identifier
			}, function(result)
				if result[1] then
					if result[1].firstname then
						playerIdentity[identifier] = {
							firstName = result[1].firstname,
							lastName = result[1].lastname,
							dateOfBirth = result[1].dateofbirth,
							sex = result[1].sex,
							height = result[1].height
						}

						alreadyRegistered[identifier] = true

						deferrals.done()
					else
						playerIdentity[identifier] = nil
						alreadyRegistered[identifier] = false
						deferrals.done()
					end
				else
					playerIdentity[identifier] = nil
					alreadyRegistered[identifier] = false
					deferrals.done()
				end
			end)
		else
			deferrals.done('¡Se ha producido un error al cargar tu personaje!\nCódigo de error: identifier-missing\n\nSe desconoce la causa de este error, no se pudo encontrar su identificador. Regrese más tarde o informe este problema al equipo de administración del servidor')
		end
	end)

	AddEventHandler('onResourceStart', function(resource)
		if resource == GetCurrentResourceName() then
			Citizen.Wait(1000)

			while not ESX do
				Citizen.Wait(10)
			end

			local xPlayers = ESX.GetPlayers()

			for i=1, #xPlayers, 1 do
				local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

				if xPlayer then	
					checkIdentity(xPlayer)
				end
			end
		end
	end)

	RegisterNetEvent('esx:playerLoaded')
	AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
		--[[ if alreadyRegistered[xPlayer.identifier] == true then
			local currentIdentity = playerIdentity[xPlayer.identifier]

			xPlayer.setName(('%s %s'):format(currentIdentity.firstName, currentIdentity.lastName))
			xPlayer.set('firstName', currentIdentity.firstName)
			xPlayer.set('lastName', currentIdentity.lastName)
			xPlayer.set('dateofbirth', currentIdentity.dateOfBirth)
			xPlayer.set('sex', currentIdentity.sex)
			xPlayer.set('height', currentIdentity.height)

			if currentIdentity.saveToDatabase then
				saveIdentityToDatabase(xPlayer.identifier, currentIdentity)
			end

			Citizen.Wait(1000)
			TriggerClientEvent('esx_identity:alreadyRegistered', xPlayer.source)

			playerIdentity[xPlayer.identifier] = nil
		else
			TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
			print("test")
		end ]]

		getIdentity(playerId, function(data)
				if data.firstname == '' then
					TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
				else

					xPlayer.setName(('%s %s'):format(data.firstname, data.lastname))
					xPlayer.set('firstName', data.firstname)
					xPlayer.set('lastName', data.lastname)
					xPlayer.set('dateofbirth', data.dateOfnirth)
					xPlayer.set('sex', data.sex)
					xPlayer.set('height', data.height)

					--if currentIdentity.saveToDatabase then
						--saveIdentityToDatabase(xPlayer.identifier, currentIdentity)
					--end

					Citizen.Wait(1000)
					TriggerClientEvent('esx_identity:alreadyRegistered', xPlayer.source)

					--playerIdentity[xPlayer.identifier] = nil

					--TriggerClientEvent('esx_identity:alreadyRegistered', xPlayer.source)
					--TriggerClientEvent('esx_skin:fixCuiLoad',)
				end
		end)
	end)

	ESX.RegisterServerCallback('esx_identity:registerIdentity', function(source, cb, data)
		local xPlayer = ESX.GetPlayerFromId(source)
		
		if xPlayer then
			if not alreadyRegistered[xPlayer.identifier] then
				if checkNameFormat(data.firstname) and checkNameFormat(data.lastname) and checkSexFormat(data.sex) and checkDOBFormat(data.dateofbirth) and checkHeightFormat(data.height) then
					playerIdentity[xPlayer.identifier] = {
						firstName = formatName(data.firstname),
						lastName = formatName(data.lastname),
						dateOfBirth = data.dateofbirth,
						sex = data.sex,
						height = data.height
					}

					local currentIdentity = playerIdentity[xPlayer.identifier]

					xPlayer.setName(('%s %s'):format(currentIdentity.firstName, currentIdentity.lastName))
					xPlayer.set('firstName', currentIdentity.firstName)
					xPlayer.set('lastName', currentIdentity.lastName)
					xPlayer.set('dateofbirth', currentIdentity.dateOfBirth)
					xPlayer.set('sex', currentIdentity.sex)
					xPlayer.set('height', currentIdentity.height)

					saveIdentityToDatabase(xPlayer.identifier, currentIdentity)
					alreadyRegistered[xPlayer.identifier] = true
			
					playerIdentity[xPlayer.identifier] = nil
					cb(true)
				else
					cb(false)
				end
			else
				cb(false)
			end
		end
	end)

	function checkIdentity(xPlayer)
		MySQL.Async.fetchAll('SELECT firstname, lastname, dateofbirth, sex, height FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function(result)
			if result[1] then
				if result[1].firstname then
					playerIdentity[xPlayer.identifier] = {
						firstName = result[1].firstname,
						lastName = result[1].lastname,
						dateOfBirth = result[1].dateofbirth,
						sex = result[1].sex,
						height = result[1].height
					}

					alreadyRegistered[xPlayer.identifier] = true

					setIdentity(xPlayer)
				else
					playerIdentity[xPlayer.identifier] = nil
					alreadyRegistered[xPlayer.identifier] = false
					TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
				end
			else
				TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
			end
		end)
	end

	function setIdentity(xPlayer)
		if alreadyRegistered[xPlayer.identifier] then
			local currentIdentity = playerIdentity[xPlayer.identifier]

			xPlayer.setName(('%s %s'):format(currentIdentity.firstName, currentIdentity.lastName))
			xPlayer.set('firstName', currentIdentity.firstName)
			xPlayer.set('lastName', currentIdentity.lastName)
			xPlayer.set('dateofbirth', currentIdentity.dateOfBirth)
			xPlayer.set('sex', currentIdentity.sex)
			xPlayer.set('height', currentIdentity.height)

			if currentIdentity.saveToDatabase then
				saveIdentityToDatabase(xPlayer.identifier, currentIdentity)
			end

			playerIdentity[xPlayer.identifier] = nil
		end
	end


if Config.EnableCommands then
	ESX.RegisterCommand('char', 'user', function(xPlayer, args, showError)
		if xPlayer and xPlayer.getName() then
			xPlayer.showNotification(_U('active_character', xPlayer.getName()))
		else
			xPlayer.showNotification(_U('error_active_character'))
		end
	end, false, {help = _U('show_active_character')})

	ESX.RegisterCommand('chardel', 'user', function(xPlayer, args, showError)
		if xPlayer and xPlayer.getName() then
			if Config.UseDeferrals then
				xPlayer.kick(_('deleted_identity'))
				Citizen.Wait(1500)
				deleteIdentity(xPlayer)
				xPlayer.showNotification(_U('deleted_character'))
				playerIdentity[xPlayer.identifier] = nil
				alreadyRegistered[xPlayer.identifier] = false
			else
				deleteIdentity(xPlayer)
				xPlayer.showNotification(_U('deleted_character'))
				playerIdentity[xPlayer.identifier] = nil
				alreadyRegistered[xPlayer.identifier] = false
				TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
			end
		else
			xPlayer.showNotification(_U('error_delete_character'))
		end
	end, false, {help = _U('delete_character')})
end


function deleteIdentity(xPlayer)
	if alreadyRegistered[xPlayer.identifier] then
		xPlayer.setName(('%s %s'):format(nil, nil))
		xPlayer.set('firstName', nil)
		xPlayer.set('lastName', nil)
		xPlayer.set('dateofbirth', nil)
		xPlayer.set('sex', nil)
		xPlayer.set('height', nil)

		deleteIdentityFromDatabase(xPlayer)
	end
end

function saveIdentityToDatabase(identifier, identity)
	MySQL.Sync.execute('UPDATE users SET firstname = @firstname, lastname = @lastname, dateofbirth = @dateofbirth, sex = @sex, height = @height WHERE identifier = @identifier', {
		['@identifier']  = identifier,
		['@firstname'] = identity.firstName,
		['@lastname'] = identity.lastName,
		['@dateofbirth'] = identity.dateOfBirth,
		['@sex'] = identity.sex,
		['@height'] = identity.height
	})
end

function deleteIdentityFromDatabase(xPlayer)
	MySQL.Sync.execute('UPDATE users SET firstname = @firstname, lastname = @lastname, dateofbirth = @dateofbirth, sex = @sex, height = @height , skin = @skin WHERE identifier = @identifier', {
		['@identifier']  = xPlayer.identifier,
		['@firstname'] = NULL,
		['@lastname'] = NULL,
		['@dateofbirth'] = NULL,
		['@sex'] = NULL,
		['@height'] = NULL,
		['@skin'] = NULL
	})

	if Config.FullCharDelete then
		MySQL.Sync.execute('UPDATE addon_account_data SET money = 0 WHERE account_name = @account_name AND owner = @owner', {
			['@account_name'] = 'bank_savings',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE addon_account_data SET money = 0 WHERE account_name = @account_name AND owner = @owner', {
			['@account_name'] = 'caution',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_ears',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_glasses',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_helmet',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_mask',
			['@owner'] = xPlayer.identifier
		})
	end
end

function checkNameFormat(name)
	if not checkAlphanumeric(name) then
		if not checkForNumbers(name) then
			local stringLength = string.len(name)
			if stringLength > 0 and stringLength < Config.MaxNameLength then
				return true
			else
				return false
			end
		else
			return false
		end
	else
		return false
	end
end

function checkDOBFormat(dob)
	local date = tostring(dob)
	if checkDate(date) then
		return true
	else
		return false
	end
end

function checkSexFormat(sex)
	if sex == "m" or sex == "M" or sex == "f" or sex == "F" then
		return true
	else
		return false
	end
end

function checkHeightFormat(height)
	local numHeight = tonumber(height)
	if numHeight < Config.MinHeight and numHeight > Config.MaxHeight then
		return false
	else
		return true
	end
end

function formatName(name)
	local loweredName = convertToLowerCase(name)
	local formattedName = convertFirstLetterToUpper(loweredName)
	return formattedName
end

function convertToLowerCase(str)
	return string.lower(str)
end

function convertFirstLetterToUpper(str)
	return str:gsub("^%l", string.upper)
end

function checkAlphanumeric(str)
	return (string.match(str, "%W"))
end

function checkForNumbers(str)
	return (string.match(str,"%d"))
end

function checkDate(str)
	if string.match(str, '(%d%d)/(%d%d)/(%d%d%d%d)') ~= nil then
		local m, d, y = string.match(str, '(%d+)/(%d+)/(%d+)')
		m = tonumber(m)
		d = tonumber(d)
		y = tonumber(y)
		if ((d <= 0) or (d > 31)) or ((m <= 0) or (m > 12)) or ((y <= Config.LowestYear) or (y > Config.HighestYear)) then
			return false
		elseif m == 4 or m == 6 or m == 9 or m == 11 then
			if d > 30 then
				return false
			else
				return true
			end
		elseif m == 2 then
			if y%400 == 0 or (y%100 ~= 0 and y%4 == 0) then
				if d > 29 then
					return false
				else
					return true
				end
			else
				if d > 28 then
					return false
				else
					return true
				end
			end
		else
			if d > 31 then
				return false
			else
				return true
			end
		end
	else
		return false
	end
end

function getIdentity(source, callback)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT identifier, firstname, lastname, dateofbirth, sex, height FROM `users` WHERE `identifier` = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		if result[1].firstname ~= nil then
			local data = {
				identifier	= result[1].identifier,
				firstname	= result[1].firstname,
				lastname	= result[1].lastname,
				dateofbirth	= result[1].dateofbirth,
				sex			= result[1].sex,
				height		= result[1].height
			}

			callback(data)
		else
			local data = {
				identifier	= '',
				firstname	= '',
				lastname	= '',
				dateofbirth	= '',
				sex			= '',
				height		= ''
			}

			callback(data)
		end
	end)
end