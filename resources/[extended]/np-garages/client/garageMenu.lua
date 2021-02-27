local ultimaAccion = nil
local currentGarage = nil
local fetchedVehicles = {}
local fueravehicles = {}

function MenuGarage(action)
    if not action then action = ultimaAccion; elseif not action and not ultimaAccion then action = "menu"; end
    ped = GetPlayerPed(-1);
    MenuTitle = "Garaje"
    ClearMenu()
    ultimaAccion = action
    Citizen.Wait(150)
    DeleteActualVeh()
    if action == "menu" then
        Menu.addButton("Listar Vehículos","ListeVehicule",nil)
        Menu.addButton("Recuperar (200$)","recuperar",nil)
        Menu.addButton("Cerrar","CloseMenu",nil) 
    elseif action == "vehicle" then
        PutInVehicle()
    end
end

function EnvioVehLocal(veh)
    local slots = {}
    for c,v in pairs(veh) do
        table.insert(slots,{["garage"] = v.garage, ["vehiculo"] = json.decode(v.vehicle)})
    end
    fetchedVehicles = slots
end

function EnvioVehFuera(data)
    local slots = {}
    for c,v in pairs(data) do
        print(v.state)
        if v.state == 0 or v.state == 2 or v.state == false or v.garage == nil then
            table.insert(slots,{["vehiculo"] = json.decode(v.vehicle),["state"] = v.state})
        end
    end
    fueravehicles = slots
end

function recuperar()
    currentGarage = cachedData["currentGarage"]

    if not currentGarage then
        CloseMenu()
        return 
    end

   HandleCamera(currentGarage, true)
   ped = GetPlayerPed(-1);
   MenuTitle = "Recuperar (200$) :"
   ClearMenu()
   Menu.addButton("Volver","MenuGarage",nil)
    for c,v in pairs(fueravehicles) do
        local vehicle = v.vehiculo
        nombre = GetDisplayNameFromVehicleModel(vehicle.model)
        label = GetLabelText(nombre)
        if v.state == 0 or v.state == false then
            Menu.addButton("" ..(vehicle.plate).." | "..label, "pagorecupero", vehicle, "          DEPÓSITO", " Motor : " .. round(vehicle.engineHealth) /10 .. "%", "Gasolina : " .. round(vehicle.fuelLevel) .. "%","SpawnLocalVehicle")
        end
    end 
end

function pagorecupero(data)
    print('dx')
    ESX.TriggerServerCallback('betrayed_garage:checkMoney', function(hasEnoughMoney)
        if hasEnoughMoney == true then
            SpawnVehicle({data,nil},true)
        --[[elseif hasEnoughMoney == "deudas" then
            recuperar()
            exports['mythic_notify']:DoCustomHudText('error', 'You have a debt with the government greater than $2000, you will not be able to recover your vehicle until you pay your fines!', 8000)--]]
        else
            recuperar()
            exports['mythic_notify']:DoHudText('error', 'No tienes suficiente dinero')							
        end
    end)
end


function AbrirMenuGuardar()
    currentGarage = cachedData["currentGarage"]
    if not currentGarage then
        CloseMenu()
        return 
    end
   ped = GetPlayerPed(-1);
   MenuTitle = "Guardar :"
   ClearMenu()
   Menu.addButton("Cerrar","CloseMenu",nil)
   Menu.addButton(""..currentGarage.." | GUARDAR", "SaveInGarage", currentGarage, "", "", "","DeleteActualVeh")
end

function ListeVehicule()
    currentGarage = cachedData["currentGarage"]

    if not currentGarage then
        CloseMenu()
        return 
    end

   HandleCamera(currentGarage, true)
   ped = GetPlayerPed(-1);
   MenuTitle = "Mis vehículos :"
   ClearMenu()
   Menu.addButton("Volver","MenuGarage",nil)
    for c,v in pairs(fetchedVehicles) do
        if v then
            local vehicle = v.vehiculo
            nombre = GetDisplayNameFromVehicleModel(vehicle.model)
            label = GetLabelText(nombre)
            Menu.addButton("" ..(vehicle.plate).." | "..label, "OptionVehicle", {vehicle,nil}, "                        Garaje: "..currentGarage.."", " Motor : " .. round(vehicle.engineHealth) /10 .. "%", " Gasolina : " .. round(vehicle.fuelLevel) .. "%","SpawnLocalVehicle")
        end
    end
end

function round(n)
    if not n then return 0; end
    return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

function OptionVehicle(data)
   MenuTitle = "Opciones :"
   ClearMenu()
   Menu.addButton("Sacar", "SpawnVehicle", data)
   Menu.addButton("Volver", "ListeVehicule", nil)
end

function CloseMenu()
    HandleCamera(currentGarage, false)
	TriggerEvent("inmenu",false)
    Menu.hidden = true
end

function LocalPed()
	return GetPlayerPed(-1)
end
