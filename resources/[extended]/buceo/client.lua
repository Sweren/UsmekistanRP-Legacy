ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local currentGear = {
    mask = 0,
    tank = 0,
    enabled = false
}

function DeleteGear()
	if currentGear.mask ~= 0 then
        DetachEntity(currentGear.mask, 0, 1)
        DeleteEntity(currentGear.mask)
		currentGear.mask = 0
    end
    
	if currentGear.tank ~= 0 then
        DetachEntity(currentGear.tank, 0, 1)
        DeleteEntity(currentGear.tank)
		currentGear.tank = 0
	end
end

RegisterNetEvent('qb-diving:client:UseGear')
AddEventHandler('qb-diving:client:UseGear', function(bool)
    if bool then
        GearAnim()
            DeleteGear()
            local maskModel = GetHashKey("p_d_scuba_mask_s")
            local tankModel = GetHashKey("p_s_scuba_tank_s")
    
            RequestModel(tankModel)
            while not HasModelLoaded(tankModel) do
                Citizen.Wait(1)
            end
            TankObject = CreateObject(tankModel, 1.0, 1.0, 1.0, 1, 1, 0)
            local bone1 = GetPedBoneIndex(GetPlayerPed(-1), 24818)
            AttachEntityToEntity(TankObject, GetPlayerPed(-1), bone1, -0.25, -0.25, 0.0, 180.0, 90.0, 0.0, 1, 1, 0, 0, 2, 1)
            currentGear.tank = TankObject
    
            RequestModel(maskModel)
            while not HasModelLoaded(maskModel) do
                Citizen.Wait(1)
            end
            
            MaskObject = CreateObject(maskModel, 1.0, 1.0, 1.0, 1, 1, 0)
            local bone2 = GetPedBoneIndex(GetPlayerPed(-1), 12844)
            AttachEntityToEntity(MaskObject, GetPlayerPed(-1), bone2, 0.0, 0.0, 0.0, 180.0, 90.0, 0.0, 1, 1, 0, 0, 2, 1)
            currentGear.mask = MaskObject
    
            SetEnableScuba(GetPlayerPed(-1), true)
            SetPedMaxTimeUnderwater(GetPlayerPed(-1), 2000.00)
            currentGear.enabled = true
            TriggerServerEvent('qb-diving:server:RemoveGear')
            ClearPedTasks(GetPlayerPed(-1))
            exports['mythic_notify']:SendAlert('success', 'Usa /buceo para retirar el equipo de buceo', 5000)
            --TriggerEvent('chatMessage', "SYSTEM", "error", "/duikpak to take off your wetsuit!")
    else
        if currentGear.enabled then
            GearAnim()
                DeleteGear()

                SetEnableScuba(GetPlayerPed(-1), false)
                SetPedMaxTimeUnderwater(GetPlayerPed(-1), 1.00)
                currentGear.enabled = false
                TriggerServerEvent('qb-diving:server:GiveBackGear')
                ClearPedTasks(GetPlayerPed(-1))
                exports['mythic_notify']:DoHudText('inform', 'Te has retirado el equipo de buceo')
        else
            exports['mythic_notify']:DoHudText('error', 'No tienes un equipo de buceo')
        end
    end
end)

function GearAnim()
    loadAnimDict("clothingshirt")    	
	TaskPlayAnim(GetPlayerPed(-1), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
end

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 