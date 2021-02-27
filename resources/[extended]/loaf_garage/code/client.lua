--[[-----------------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
© Loaf Scripts 2020 All Rights Reserved
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--]]-----------------------------------

--[[------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SHARING THIS FILE IS ILLEGAL
!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--]]------------------------

local busy = false

CreateThread(function()
    while ESX == nil do 
        Wait(0)
    end

    CreateThread(function()
        while true do
            local sleep = 250
            if not busy then
                for k, v in pairs(Config['Garages']) do
                    local PlayerPed = PlayerPedId()
                    local dist = #(GetEntityCoords(PlayerPed) - v['coords'])
                    if dist <= 250.0 then
                        sleep = 0
                        Marker(v['coords'] - vec3(0.0, 0.0, 0.5))
                        local string, vehicle = 'enter_garage', GetVehiclePedIsUsing(PlayerPed)
                        if DoesEntityExist(vehicle) then
                            string = 'store_garage'
                        end
                        if dist <= 7.5 then
                            if Config['3DText']['Enabled'] and dist > 2.0 then
                                Config['3DText']['Draw'](v['coords'] + vec3(0.0, 0.0, 1.25), (Strings[string]):format(''))
                            else
                                if dist <= 3.5 then
                                    HelpText((Strings[string]):format('~INPUT_CONTEXT~'), v['coords'] + vec3(0.0, 0.0, 1.25))
                                    if IsControlJustReleased(0, 51) then
                                        if DoesEntityExist(vehicle) then
                                            local vehprops = ESX['Game']['GetVehicleProperties'](vehicle)
                                            ESX['TriggerServerCallback']('loaf_garage:store', function(success)
                                                if success then
                                                    while DoesEntityExist(vehicle) do
                                                        Wait(0)
                                                        SetEntityAsMissionEntity(vehicle, true, true)
                                                        TriggerEvent('persistent-vehicles/forget-vehicle', vehicle)
                                                        DeleteVehicle(vehicle)
                                                    end
                                                end
                                            end, json.encode(GetDamages(vehicle)), json.encode(vehprops), vehprops['plate'], k)
                                        else
                                            TriggerServerEvent('esx_garage:viewVehicles', v['coords'], v['heading'], k)
                                            Wait(3500)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            Wait(sleep)
        end
    end)

    CreateThread(function()
        while true do
            local sleep = 250
            if not busy then
                for k, v in pairs(Config['Impounds']) do
                    local dist = #(GetEntityCoords(PlayerPedId()) - v['Menu'])
                    if dist <= 250.0 then
                        sleep = 0
                        Marker(v['Menu'] - vec3(0.0, 0.0, 0.5))
                        if dist <= 7.5 then
                            if Config['3DText']['Enabled'] and dist > 2.0 then
                                Config['3DText']['Draw'](v['Menu'] + vec3(0.0, 0.0, 1.25), (Strings['open_impound']):format(''))
                            else
                                if dist <= 3.5 then
                                    HelpText((Strings['open_impound']):format('~INPUT_CONTEXT~'), v['Menu'] + vec3(0.0, 0.0, 1.25))
                                    if IsControlJustReleased(0, 51) then
                                        TriggerServerEvent('loaf_garage:impound', v['SpawnVehicle'])
                                    end
                                end
                            end
                        end
                    end
                end
            end
            Wait(sleep)
        end
    end)
end)

RegisterNetEvent('loaf_garage:viewImpounded')
AddEventHandler('loaf_garage:viewImpounded', function(vehicleSpawn, impounded)
   -- tprint(impounded)
    ESX['UI']['Menu']['CloseAll']()
    local elements = {}
    for k, v in pairs(impounded) do
        table.insert(elements, {label = (Strings['retrieve_impounded']):format(GetLabelText(v['model']), v['plate'], Config['ImpoundPrice']), value = v['plate']})
    end
    ESX['UI']['Menu']['Open'](
        'default', GetCurrentResourceName(), 'take_out',
    {
        title = Strings['impound_blip'],
        align = 'right',
        elements = elements
    },
    function(data, menu)
        print(VehicleExists(data['current']['value']))
        if not VehicleExists(data['current']['value']) then
            ESX['TriggerServerCallback']('loaf_garage:retrieve', function(data)
                if data then
                    local model = json.decode(data['vehicle'])['model']
                    while not HasModelLoaded(model) do 
                        RequestModel(model)
                        Wait(0)
                    end

                    local car = CreateVehicle(model, vehicleSpawn + vec4(0.0, 0.0, 0.25, 0.0), true, false)
                    TriggerEvent('persistent-vehicles/register-vehicle', car)
                    ESX['Game']['SetVehicleProperties'](car, json.decode(data['vehicle']))

                    if Config['Damages'] then
                        SetDamages(car, json.decode(data['damages']))
                    end

                    TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)

                    SetEntityAsMissionEntity(car, true, true)
                    SetVehicleHasBeenOwnedByPlayer(car, true)
                    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(car), true)
                    SetVehicleHasBeenOwnedByPlayer(car, true)
                    SetVehicleNeedsToBeHotwired(car, false)
                    SetModelAsNoLongerNeeded(model)

                    SetVehRadioStation(car, 'OFF')
                end
            end, data['current']['value'])
            ESX['UI']['Menu']['CloseAll']()
        else
            TriggerServerEvent('loaf_garage:notify', Strings['already_out'], 'error', 1500)
        end
    end, 
        function(data, menu)
        menu['close']()
    end)
end)

RegisterNetEvent('loaf_garage:view')
AddEventHandler('loaf_garage:view', function(vehicles, coords, heading, garage)
    busy = true
    local current, delay = 1, GetGameTimer()
    local car = false

    while true do
        Wait(0)

        SetVehicleEngineOn(vehicle, false, true)
        SetEntityVisible(PlayerPedId(), false, false)
        DisableControlAction(0, 75, true)
        DisableControlAction(27, 75, true)
        
        local nombre = GetLabelText(GetDisplayNameFromVehicleModel(vehicles[current]['model']))

        if vehicles[current]['encasa'] then
            HelpText('~b~~h~' .. Strings['casa'] .. '~h~\n' .. (Strings['vehicle_info']):format(garage, vehicles[current]['plate'], GetLabelText(GetDisplayNameFromVehicleModel(vehicles[current]['model'])), '~INPUT_CELLPHONE_LEFT~', '~INPUT_CELLPHONE_RIGHT~', '~INPUT_FRONTEND_RDOWN~', '~INPUT_FRONTEND_RRIGHT~'))
        elseif vehicles[current]['embargo'] then
            HelpText('~y~~h~' .. Strings['embargo'] .. '~h~\n' .. (Strings['vehicle_info']):format(garage, vehicles[current]['plate'], GetLabelText(GetDisplayNameFromVehicleModel(vehicles[current]['model'])), '~INPUT_CELLPHONE_LEFT~', '~INPUT_CELLPHONE_RIGHT~', '~INPUT_FRONTEND_RDOWN~', '~INPUT_FRONTEND_RRIGHT~'))
        elseif vehicles[current]['state'] then
            HelpText('~r~~h~' .. Strings['impound'] .. '~h~\n' .. (Strings['vehicle_info']):format(garage, vehicles[current]['plate'], GetLabelText(GetDisplayNameFromVehicleModel(vehicles[current]['model'])), '~INPUT_CELLPHONE_LEFT~', '~INPUT_CELLPHONE_RIGHT~', '~INPUT_FRONTEND_RDOWN~', '~INPUT_FRONTEND_RRIGHT~'))
        else
            HelpText((Strings['vehicle_info']):format(garage, vehicles[current]['plate'], GetLabelText(GetDisplayNameFromVehicleModel(vehicles[current]['model'])), '~INPUT_CELLPHONE_LEFT~', '~INPUT_CELLPHONE_RIGHT~', '~INPUT_FRONTEND_RDOWN~', '~INPUT_FRONTEND_RRIGHT~'))
        end

        if GetEntityModel(car) ~= json.decode(vehicles[current]['vehicle'])['model'] then
            if DoesEntityExist(car) then
                DeleteVehicle(car)
            end
            local nextCar = CreateLocalVehicle(vehicles[current], coords, heading)
            if DoesEntityExist(nextCar) then
                car = nextCar
            else
                if vehicles[current + 1] then
                    current = current +1
                else
                    current = 1
                end
            end
        end
        if IsControlPressed(0, 174) and delay <= GetGameTimer() then
            if vehicles[current - 1] then
                current = current - 1
            else
                current = #vehicles
            end
            delay = GetGameTimer() + 250
        elseif IsControlPressed(0, 175) and delay <= GetGameTimer() then
            if vehicles[current + 1] then
                current = current +1
            else
                current = 1
            end
            delay = GetGameTimer() + 250
        elseif IsControlJustReleased(0, 194) then
            if DoesEntityExist(car) then
                DeleteVehicle(car)
            end
            SetEntityCoords(PlayerPedId(), coords)
            SetEntityHeading(PlayerPedId(), heading)
            break
        elseif IsControlJustReleased(0, 191) and not vehicles[current]['state'] and not vehicles[current]['embargo'] then
            ESX['TriggerServerCallback']('loaf_garage:takeOut', function(info)

                if info ~= false then
                    DoScreenFadeOut(0)
                    Wait(250)

                    SetEntityVisible(PlayerPedId(), true, false)
                    local model = json.decode(info['vehicle'])['model']
                    while not HasModelLoaded(model) do 
                        RequestModel(model)
                        Wait(0)
                    end

                    local car = CreateVehicle(model, coords + vec3(0.0, 0.0, 0.25), heading, true, false)
                    TriggerEvent('persistent-vehicles/register-vehicle', car)
                    ESX['Game']['SetVehicleProperties'](car, json.decode(info['vehicle']))

                    if Config['Damages'] then
                        SetDamages(car, json.decode(info['damages']))
                    end

                    SetEntityAsMissionEntity(car, true, true)
                    SetVehicleHasBeenOwnedByPlayer(car, true)
                    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(car), true)
                    SetVehicleHasBeenOwnedByPlayer(car, true)
                    SetVehicleNeedsToBeHotwired(car, false)
                    SetModelAsNoLongerNeeded(model)
                    SetVehRadioStation(car, 'OFF')

                    local timer = GetGameTimer() + 1500
                    while timer >= GetGameTimer() do
                        Wait(150)
                        TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
                    end

                    DoScreenFadeIn(500)
                end

            end, vehicles[current]['plate'])

            Wait(500)

            if DoesEntityExist(car) then
                DeleteVehicle(car)
            end

            break
        end
    end

    SetEntityVisible(PlayerPedId(), true, false)
    SetEntityCoords(PlayerPedId(), coords)

    busy = false
end)

HelpText = function(msg, coords)
    if not coords or not Config['3DText']['Enabled'] then
        AddTextEntry(GetCurrentResourceName(), msg)
        DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
    else
        Config['3DText']['Draw'](coords, string.gsub(msg, '~INPUT_CONTEXT~', '~w~[~r~' .. GetControlInstructionalButton(0, 51, 1):gsub('t_', '') .. '~w~]'))
    end
end

CreateLocalVehicle = function(vehicle, coords, heading)
    local info = json.decode(vehicle['vehicle'])
    local model = info['model']
    local cName = GetDisplayNameFromVehicleModel(model)
    local timer = GetGameTimer() + 2500
    while not HasModelLoaded(model) do 
        Wait(0)
        RequestModel(model)
        if timer <= GetGameTimer() then
            ESX['ShowNotification']('Error al cargar vehículo: ' .. cName ..'/'.. model ..  '. Placa: ~y~' .. vehicle['plate'])
            return false
        end
    end

    if Config['Interior']['Enabled'] then
        coords = Config['Interior']['Coords']
        heading = Config['Interior']['Heading']
    end

    local car = CreateVehicle(model, coords, heading, false, false)
    TriggerEvent('persistent-vehicles/register-vehicle', car)
    ESX['Game']['SetVehicleProperties'](car, json.decode(vehicle['vehicle']))

    if Config['Damages'] then
        SetDamages(car, json.decode(vehicle['damages']))
    end

    SetEntityAsMissionEntity(car, true, false)
	SetVehicleHasBeenOwnedByPlayer(car, true)
	SetVehicleNeedsToBeHotwired(car, false)
	SetModelAsNoLongerNeeded(model)

    while not HasCollisionLoadedAroundEntity(car) do
		RequestCollisionAtCoord(coords)
		Wait(0)
	end

    SetVehRadioStation(car, 'OFF')
    TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
    FreezeEntityPosition(car, true)
    return car
end

function tprint (tbl, indent)
    if not indent then indent = 0 end
    for k, v in pairs(tbl) do
      formatting = string.rep("  ", indent) .. k .. ": "
      if type(v) == "table" then
        print(formatting)
        tprint(v, indent+1)
      elseif type(v) == 'boolean' then
        print(formatting .. tostring(v))      
      else
        print(formatting .. v)
      end
    end
  end