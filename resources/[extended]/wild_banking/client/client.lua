

local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX				= nil
inMenu			= true
local showblips	= true
local atbank	= true
local bankMenu	= true
local banks = {
	{name="Banco", id=108, x=150.266, y=-1040.203, z=29.374},
	{name="Banco", id=108, x=-1212.980, y=-330.841, z=37.787},
	{name="Banco", id=108, x=-2962.582, y=482.627, z=15.703},
	{name="Banco", id=108, x=-112.202, y=6469.295, z=31.626},
	{name="Banco", id=108, x=314.187, y=-278.621, z=54.170},
	{name="Banco", id=108, x=-351.534, y=-49.529, z=49.042},
	--{name="Banco Principal Los Santos", id=106, x=241.727, y=220.706, z=106.286, principal = true},
	{name="Banco", id=108, x=1175.0643310547, y=2706.6435546875, z=38.094036102295}
}
local wplacone = false
local atms = {
  {name="ATM", id=277, x=-31.438177108765, y=-1659.8800048828, z=29.478931427002,287.94229125977},
	{name="ATM", id=277, x=-386.733, y=6045.953, z=31.501},
	{name="ATM", id=277, x=-284.037, y=6224.385, z=31.187},
	{name="ATM", id=277, x=-284.037, y=6224.385, z=31.187},
	{name="ATM", id=277, x=-135.165, y=6365.738, z=31.101},
	{name="ATM", id=277, x=-110.753, y=6467.703, z=31.784},
	{name="ATM", id=277, x=-94.9690, y=6455.301, z=31.784},
	{name="ATM", id=277, x=155.4300, y=6641.991, z=31.784},
	{name="ATM", id=277, x=174.6720, y=6637.218, z=31.784},
	{name="ATM", id=277, x=1703.138, y=6426.783, z=32.730},
	{name="ATM", id=277, x=1735.114, y=6411.035, z=35.164},
	{name="ATM", id=277, x=1702.842, y=4933.593, z=42.051},
	{name="ATM", id=277, x=1967.333, y=3744.293, z=32.272},
	{name="ATM", id=277, x=1821.917, y=3683.483, z=34.244},
	{name="ATM", id=277, x=1174.532, y=2705.278, z=38.027},
	{name="ATM", id=277, x=540.0420, y=2671.007, z=42.177},
	{name="ATM", id=277, x=2564.399, y=2585.100, z=38.016},
	{name="ATM", id=277, x=2558.683, y=349.6010, z=108.050},
	{name="ATM", id=277, x=2558.051, y=389.4817, z=108.660},
	{name="ATM", id=277, x=1077.692, y=-775.796, z=58.218},
	{name="ATM", id=277, x=1139.018, y=-469.886, z=66.789},
	{name="ATM", id=277, x=1168.975, y=-457.241, z=66.641},
	{name="ATM", id=277, x=1153.884, y=-326.540, z=69.245},
	{name="ATM", id=277, x=381.2827, y=323.2518, z=103.270},
	{name="ATM", id=277, x=236.4638, y=217.4718, z=106.840},
	{name="ATM", id=277, x=265.0043, y=212.1717, z=106.780},
	{name="ATM", id=277, x=285.2029, y=143.5690, z=104.970},
	{name="ATM", id=277, x=157.7698, y=233.5450, z=106.450},
	{name="ATM", id=277, x=-164.568, y=233.5066, z=94.919},
	{name="ATM", id=277, x=-1827.04, y=785.5159, z=138.020},
	{name="ATM", id=277, x=-1409.39, y=-99.2603, z=52.473},
	{name="ATM", id=277, x=-1205.35, y=-325.579, z=37.870},
	{name="ATM", id=277, x=-1215.64, y=-332.231, z=37.881},
	{name="ATM", id=277, x=-2072.41, y=-316.959, z=13.345},
	{name="ATM", id=277, x=-2975.72, y=379.7737, z=14.992},
	{name="ATM", id=277, x=-2962.60, y=482.1914, z=15.762},
	{name="ATM", id=277, x=-2955.70, y=488.7218, z=15.486},
	{name="ATM", id=277, x=-3044.22, y=595.2429, z=7.595},
	{name="ATM", id=277, x=-3144.13, y=1127.415, z=20.868},
	{name="ATM", id=277, x=-3241.10, y=996.6881, z=12.500},
	{name="ATM", id=277, x=-3241.11, y=1009.152, z=12.877},
	{name="ATM", id=277, x=-1305.40, y=-706.240, z=25.352},
	{name="ATM", id=277, x=-538.225, y=-854.423, z=29.234},
	{name="ATM", id=277, x=-711.156, y=-818.958, z=23.768},
	{name="ATM", id=277, x=-717.614, y=-915.880, z=19.268},
	{name="ATM", id=277, x=-526.566, y=-1222.90, z=18.434},
	{name="ATM", id=277, x=-256.831, y=-719.646, z=33.444},
	{name="ATM", id=277, x=-203.548, y=-861.588, z=30.205},
	{name="ATM", id=277, x=112.4102, y=-776.162, z=31.427},
	{name="ATM", id=277, x=112.9290, y=-818.710, z=31.386},
	{name="ATM", id=277, x=119.9000, y=-883.826, z=31.191},
	{name="ATM", id=277, x=149.4551, y=-1038.95, z=29.366},
	{name="ATM", id=277, x=-846.304, y=-340.402, z=38.687},
	{name="ATM", id=277, x=-1204.35, y=-324.391, z=37.877},
	{name="ATM", id=277, x=-1216.27, y=-331.461, z=37.773},
	{name="ATM", id=277, x=-56.1935, y=-1752.53, z=29.452},
	{name="ATM", id=277, x=-261.692, y=-2012.64, z=30.121},
	{name="ATM", id=277, x=-273.001, y=-2025.60, z=30.197},
	{name="ATM", id=277, x=314.187, y=-278.621, z=54.170},
	{name="ATM", id=277, x=-351.534, y=-49.529, z=49.042},
	{name="ATM", id=277, x=24.589, y=-946.056, z=29.357},
	{name="ATM", id=277, x=-254.112, y=-692.483, z=33.616},
	{name="ATM", id=277, x=-1570.197, y=-546.651, z=34.955},
	{name="ATM", id=277, x=-1415.909, y=-211.825, z=46.500},
	{name="ATM", id=277, x=-1430.112, y=-211.014, z=46.500},
	{name="ATM", id=277, x=33.232, y=-1347.849, z=29.497},
	{name="ATM", id=277, x=129.216, y=-1292.347, z=29.269},
	{name="ATM", id=277, x=287.645, y=-1282.646, z=29.659},
	{name="ATM", id=277, x=289.012, y=-1256.545, z=29.440},
	{name="ATM", id=277, x=295.839, y=-895.640, z=29.217},
	{name="ATM", id=277, x=1686.753, y=4815.809, z=42.008},
	{name="ATM", id=277, x=-302.408, y=-829.945, z=32.417},
	{name="ATM", id=277, x=5.134, y=-919.949, z=29.557},
	{name="ATM", id=277, x=1115.7395019531, y=220.00482177734, z=-50.435115814209},
	{name="ATM", id=277, x=315.17504882812, y=-593.72924804688, z=43.283981323242},
	{name="ATM", id=277, x=315.17504882812, y=-593.72924804688, z=43.283981323242},
	{name="ATM", id=277, x=-57.262722015381, y=-1097.3276367188, z=26.422334671021},
	{name="ATM", id=277, x=-1125.0313720703, y=-1705.5102539062, z=4.4483046531677}, 
	{name="ATM", id=277, x=907.03973388672, y=-154.82292175293, z=73.147270202637}, 
	{name="ATM", id=277, x=222.24781799316, y=-183.42024230957, z=53.605499267578}, 
}
--================================================================================================
--==                                THREADING - DO NOT EDIT                                     ==
--================================================================================================

--===============================================
--==           Base ESX Threading              ==
--===============================================
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)





--===============================================
--==             Core Threading                ==
--===============================================
if bankMenu then
	Citizen.CreateThread(function()
	while true do
		Wait(1)
	if nearBank() or nearATM() then
			DisplayHelpText("Presione ~INPUT_PICKUP~ para acceder al cajero automatico!~b~")

		if IsControlJustPressed(1, 38) then
			inMenu = true
			SetNuiFocus(true, true)
			SendNUIMessage({type = 'openGeneral'})
			TriggerServerEvent('bank:balance')
			local ped = GetPlayerPed(-1)
			Citizen.Wait(2)
		end
	end

		if IsControlJustPressed(1, 322) then
		inMenu = false
			SetNuiFocus(false, false)
			SendNUIMessage({type = 'close'})
			Citizen.Wait(2)
		end
	end
	end)
end


--===============================================
--==             Map Blips	                   ==
--===============================================
Citizen.CreateThread(function()
	if showblips then
		for k,v in ipairs(banks)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.id)
		SetBlipScale(blip, 0.7)
		SetBlipAsShortRange(blip, true)
		if v.principal ~= nil and v.principal then
			SetBlipColour(blip, 77)
		end
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(tostring(v.name))
		EndTextCommandSetBlipName(blip)
		end
	end
end)



--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNetEvent('currentbalance1')
AddEventHandler('currentbalance1', function(balance)
	local id = PlayerId()
	local playerName = GetPlayerName(id)

	SendNUIMessage({
		type = "balanceHUD",
		balance = balance,
		player = playerName
		})
end)
--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNUICallback('deposit', function(data)
	TriggerServerEvent('bank:deposit', tonumber(data.amount))
	TriggerServerEvent('bank:balance')
end)

--===============================================
--==          Withdraw Event                   ==
--===============================================
RegisterNUICallback('withdrawl', function(data)
	TriggerServerEvent('bank:withdraw', tonumber(data.amountw))
	TriggerServerEvent('bank:balance')
end)

--===============================================
--==         Balance Event                     ==
--===============================================
RegisterNUICallback('balance', function()
	TriggerServerEvent('bank:balance')
end)

RegisterNetEvent('balance:back')
AddEventHandler('balance:back', function(balance)
	SendNUIMessage({type = 'balanceReturn', bal = balance})
end)


--===============================================
--==         Transfer Event                    ==
--===============================================
RegisterNUICallback('transfer', function(data)
	TriggerServerEvent('bank:transfer', data.to, data.amountt)
	TriggerServerEvent('bank:balance')
end)

--===============================================
--==         Result   Event                    ==
--===============================================
RegisterNetEvent('bank:result')
AddEventHandler('bank:result', function(type, message)
	SendNUIMessage({type = 'result', m = message, t = type})
end)

--===============================================
--==               NUIFocusoff                 ==
--===============================================
RegisterNUICallback('NUIFocusOff', function()
	inMenu = false
	SetNuiFocus(false, false)
	SendNUIMessage({type = 'closeAll'})
end)


--===============================================
--==            Capture Bank Distance          ==
--===============================================
function nearBank()
	Citizen.Wait(2)
	local player = GetPlayerPed(-1)
	local playerloc = GetEntityCoords(player, 0)

	for _, search in pairs(banks) do
		local distance = GetDistanceBetweenCoords(search.x, search.y, search.z, playerloc['x'], playerloc['y'], playerloc['z'], true)

		if distance <= 3 then
			return true
		end
	end
end


function nearATM()
	Citizen.Wait(2)
	local player = GetPlayerPed(-1)
	local playerloc = GetEntityCoords(player, 0)

	for _, search in pairs(atms) do
		local distance = GetDistanceBetweenCoords(search.x, search.y, search.z, playerloc['x'], playerloc['y'], playerloc['z'], true)

		if distance <= 3 then
			return true
		end
	end
end


function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end


--[[ Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local pos = GetEntityCoords(GetPlayerPed(-1))
		local x = 246.39
		local y = 223.1
		local z = 106.29
		local x2 = 248.2
		local y2 = 222.32
		local z2 = 106.29
		DrawMarker(1, x, y, z - 0.975, 0, 0, 0, 0, 4, 4, 1.0001, 1.0001, 1.0001, 255, 255, 0,255, 0, 0, 0,0)
		DrawMarker(1, x2, y2, z2 - 0.975, 0, 0, 0, 0, 4, 4, 1.0001, 1.0001, 1.0001, 255, 255, 0,255, 0, 0, 0,0)
		if(Vdist(pos.x, pos.y, pos.z, x, y, z) <= 1.0)or(Vdist(pos.x, pos.y, pos.z, x2, y2, z2) <= 1.0)then
			ESX.ShowHelpNotification("Presione ~INPUT_CONTEXT~ para abrir el ~y~menu")
			if IsControlJustPressed(0, Keys["E"])then
				OpenLokataMenu()
			end
		end
	end
end) ]]

Citizen.CreateThread(function()
	local blip = AddBlipForCoord(246.39, 223.1, 106.29)
	SetBlipSprite (blip, 500)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.9)
	SetBlipColour (blip, 69)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Lokata")
	EndTextCommandSetBlipName(blip)
end)


RegisterNetEvent("wild:bankupdate")
AddEventHandler("wild:bankupdate", function()
	ESX.ShowAdvancedNotificationColor("~h~Banco Central de Los Santos", "~y~Anuncio", "¡Advertencia! ¡durante los próximos 30 minutos globales en el Banco Central LS puede retirar sus depósitos!", "CHAR_BANK_MAZE", 1, 210)
end)

function OpenLokataMenu()
	wplacone = false
    local elements = {
		{label = "Ingresar dinero", value = "insertmoney"},
		{label = "Retirar dinero (todos)", value = "selectmoney"},
		{label = "Ver el saldo de dinero en el depósito", value = "showaccount"},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'ShopMenu',
      {
        title    = 'Menú de depósitos',
        align    = 'center',
        elements = elements,
      },
      function(data, menu)
		  local value = data.current.value
		  local moneyamount
		  if value == "insertmoney" then
			ESX.UI.Menu.CloseAll()
			DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 100)
			while(UpdateOnscreenKeyboard() == 0)do
				DisableAllControlActions(0);
				Wait(0);
			end
			if(GetOnscreenKeyboardResult())then
				moneyamount = GetOnscreenKeyboardResult()
			end
			if(moneyamount ~= '') and wplacone == false then
				Citizen.Wait(100)
				TriggerServerEvent("wild:lokatawplata", moneyamount)
				--moneyamount = ''
			end
		  elseif value == "selectmoney" then
				Citizen.Wait(200)
				TriggerServerEvent("wild:wyplaclokata")
		  elseif value == "showaccount" then
			ESX.TriggerServerCallback("wild:getlokata", function(cb)
				local lokatahajs
				if cb ~= nil then
					ESX.ShowAdvancedNotificationColor("~h~Banco Central de Los Santos", "~y~Inversión", "Actualmente tienes en tu cuenta ~y~" .. cb .. "$", "CHAR_BANK_MAZE", 1, 210)
				else
					ESX.ShowAdvancedNotificationColor("~h~Banco Central de Los Santos", "~y~Inversión", "Actualmente no tienes fondos ~r~en tu cuenta!", "CHAR_BANK_MAZE", 1, 210)
				end
			end)
		  end
	  end,
      function(data, menu)
		menu.close()
      end
    )
end

RegisterNetEvent("wild:s")
AddEventHandler("wild:s", function(hajs)
	ESX.ShowAdvancedNotificationColor("~h~Banco Central de Los Santos", "Inversión", "Pagado para depositar: ~y~" .. hajs .. "$", "CHAR_BANK_MAZE", 1, 210)
end)


RegisterNetEvent("wild:g")
AddEventHandler("wild:g", function()
	ESX.ShowAdvancedNotificationColor("~h~Banco Central de Los Santos", "Inversión", "¡Ha retirado todo el dinero de su depósito!", "CHAR_BANK_MAZE", 1, 210)
end)


Citizen.CreateThread(function()
	local model = -1280051738

	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end

	local MafiaPed = CreatePed(1, model, 248.9, 224.34, 106.29 - 0.955, 150.34, false, true)
	SetEntityInvincible(MafiaPed, true)
	SetPedDiesWhenInjured(MafiaPed, false)
	SetPedCanPlayAmbientAnims(MafiaPed, true)
	SetPedCanRagdollFromPlayerImpact(MafiaPed, false)
	FreezeEntityPosition(MafiaPed, true)
	SetBlockingOfNonTemporaryEvents(MafiaPed, true)
	--TaskStartScenarioInPlace(MafiaPed, "WORLD_HUMAN_GUARD_STAND", 0, false)

end)

Citizen.CreateThread(function()
	local model = -1280051738

	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end

	local MafiaPed = CreatePed(1, model, 247.13, 225.01, 106.29 - 0.955, 147.72, false, true)
	SetEntityInvincible(MafiaPed, true)
	SetPedDiesWhenInjured(MafiaPed, false)
	SetPedCanPlayAmbientAnims(MafiaPed, true)
	SetPedCanRagdollFromPlayerImpact(MafiaPed, false)
	FreezeEntityPosition(MafiaPed, true)
	SetBlockingOfNonTemporaryEvents(MafiaPed, true)
	--TaskStartScenarioInPlace(MafiaPed, "WORLD_HUMAN_GUARD_STAND", 0, false)

end)
