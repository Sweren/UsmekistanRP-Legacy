local menuOpen = false
local wasOpen = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.LicenseShop.coords, true) < 5 then
			if not menuOpen then
				ESX.ShowHelpNotification(_U('licenseshop_prompt'))

				if IsControlJustReleased(0, 38) then
					if Config.RestrictLicenseShopAcces == true then
						CheckJob()
					else
						wasOpen = true
						OpenlicenseShop()
					end
				end
			else
				Citizen.Wait(500)
			end
		else
			if wasOpen then
				wasOpen = false
				ESX.UI.Menu.CloseAll()
			end
			Citizen.Wait(500)
		end
	end
end)

function CheckJob()
	ESX.TriggerServerCallback('esx_illegal:CheckJob', function(cb)
		if cb then
			wasOpen = true
			OpenlicenseShop()
		end
	end)
end

function OpenlicenseShop()
	ESX.UI.Menu.CloseAll()
	local elements = {}
	menuOpen = true

	for k, v in pairs(ESX.GetPlayerData().inventory) do
		local price = Config.Licenses[v.name]
		local dummy1 = 0
		local dummy2 = 0

		if dummy1 and dummy2 >= 0 then
			table.insert(elements, {
				label = ('%s - <span style="color:green;">%s</span>'):format("Comprar Licencia de Lavado", "$500.000"),
				name = "moneywash",
				price = "500000",

			})
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'license_shop', {
		title    = _U('licenseshop_title'),
		align    = 'right',
		elements = elements
	}, function(data, menu)
		TriggerServerEvent('esx_illegal:buyLisense2', data.current.name)
	end, function(data, menu)
		menu.close()
		menuOpen = false
	end)
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		if menuOpen then
			ESX.UI.Menu.CloseAll()
		end
	end
end)