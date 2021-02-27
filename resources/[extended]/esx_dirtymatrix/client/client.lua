local GUI = {}
local markerch3ck = false
local enteredmatrix = false
local currentlywashing = false
local shitterblipTime = 15
local PlayerData = {}
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('Cybernetic police')
AddEventHandler('Cybernetic police', function(message)
	local PlayerData = ESX.GetPlayerData()
	if PlayerData.job.name == 'police' then
		dild0s(message)
	end
end)

function dild0s(message)
	ESX.ShowAdvancedNotification('Dispatch', 'Alert', message , 'CHAR_CALL911', 1)
end

RegisterNetEvent('bliplocale')
AddEventHandler('bliplocale', function(x, y, z)
	local PlayerData = ESX.GetPlayerData()
	if PlayerData.job.name == 'police' then
		local alpha = 250
		local shitterblip = AddBlipForCoord(x, y, z)
		SetBlipSprite(shitterblip,  1)
		SetBlipColour(shitterblip,  1)
		SetBlipAlpha(shitterblip,  alpha)
		SetBlipAsShortRange(shitterblip,  1)
		while alpha ~= 0 do
			Wait(shitterblipTime * 4)
			alpha = alpha - 1
			SetBlipAlpha(shitterblip,  alpha)
			if alpha == 0 then
				SetBlipSprite(shitterblip,  2)
				return
			end
		end
	end
end)

RegisterNetEvent('esx_matrixwash:exitmatrix')
AddEventHandler('esx_matrixwash:exitmatrix', function()
	SetNuiFocus(false)
	currentlywashing = false
	SendNUIMessage({
		hideAll = true
	})
end)

RegisterNUICallback('escape', function(data, cb)
	TriggerEvent('esx_matrixwash:exitmatrix')
	cb('ok')
end)

RegisterNUICallback('deposit', function(data, cb)
	TriggerServerEvent('esx_matrixwash:deposit', data.amount)
	cb('ok')
end)

RegisterNUICallback('withdraw', function(data, cb)
	PlaySoundFrontend(-1, "HACKING_SUCCESS", false)
	TriggerServerEvent('esx_matrixwash:withdraw', data.amount)
	TriggerEvent('esx_matrixwash:exitmatrix')
	cb('ok')
end)


Citizen.CreateThread(function()
	Citizen.Wait(0)
	if Config.blipson then
		for i=1, #Config.blip, 1 do
			local blip = AddBlipForCoord(Config.blip[i].x, Config.blip[i].y, Config.blip[i].z)
			SetBlipSprite (blip, Config.blip[i].id)
			SetBlipDisplay(blip, 4)
			SetBlipColour (blip, Config.blip[i].color)
			SetBlipScale  (blip, Config.blip[i].scale)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(Config.blip[i].name)
			EndTextCommandSetBlipName(blip)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1))
		for i=1, #Config.matrix, 1 do
			if(GetDistanceBetweenCoords(coords, Config.matrix[i].x, Config.matrix[i].y, Config.matrix[i].z, true) < Config.DrawDistance) then
				DrawMarker(Config.MarkerType, Config.matrix[i].x, Config.matrix[i].y, Config.matrix[i].z - Config.ZDiff, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1))
		enteredmatrix = false
		for i=1, #Config.matrix, 1 do
			if(GetDistanceBetweenCoords(coords, Config.matrix[i].x, Config.matrix[i].y, Config.matrix[i].z, true) < Config.ZoneSize.x / 2) then
				enteredmatrix = true
				SetTextComponentFormat('STRING')
				AddTextComponentString((Config.washmessage))
				DisplayHelpTextFromStringLabel(0, 0, 1, -1)
			end
		end
		if enteredmatrix and not markerch3ck then
			markerch3ck = true
		end
		if not enteredmatrix and markerch3ck then
			markerch3ck = false
			SetNuiFocus(false)
			currentlywashing = false
			SendNUIMessage({
				hideAll = true
			})
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		if currentlywashing then
			DisableControlAction(0, 1,   true) -- LookLeftRight
			DisableControlAction(0, 2,   true) -- LookUpDown
			DisableControlAction(0, 142, true) -- MeleeAttackAlternate
			DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
			if IsDisabledControlJustReleased(0, 142) then -- MeleeAttackAlternate
				SendNUIMessage({
					click = true
				})
			end
		else
			if IsControlJustReleased(0, 38) and enteredmatrix then
				local playerPed = PlayerPedId()
				local PedPosition = GetEntityCoords(playerPed)
				local lastVehicle = GetVehiclePedIsIn(playerPed, true)
				local playerCoords = GetEntityCoords(playerPed, 0)

				if Config.alertpolice then
				if lastVehicle >0 then
					local plate = GetVehicleNumberPlateText(lastVehicle)
					local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(lastVehicle))
					local cuntflaps = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, playerCoords['x'], playerCoords['y'], playerCoords['z'], Citizen.PointerValueInt(), Citizen.PointerValueInt() )
					local street = GetStreetNameFromHashKey(cuntflaps)
					TriggerServerEvent('mapalert', playerCoords['x'], playerCoords['y'], playerCoords['z'])
					TriggerServerEvent('moneywashalert', street, vehicleLabel, plate)
				else
					local cuntflaps = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, playerCoords['x'], playerCoords['y'], playerCoords['z'], Citizen.PointerValueInt(), Citizen.PointerValueInt() )
					local street = GetStreetNameFromHashKey(cuntflaps)
					TriggerServerEvent('mapalert', playerCoords['x'], playerCoords['y'], playerCoords['z'])
					TriggerServerEvent('moneywashalert', street)
				end
			end
				currentlywashing = true
				ESX.TriggerServerCallback('esx:getPlayerData', function(data)
					SendNUIMessage({
						showMenu = true,
						player   = {
							money = data.money,
							accounts = data.accounts
						}
					})
				end)
				SetNuiFocus(true)
			end
		end
	end
end)
