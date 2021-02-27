Citizen.CreateThread(function()
     while not _sync do Wait(100) end
     for k,v in pairs(object) do
          LoadModel(v.ped)
          local ped = CreatePed(5, v.ped, v.zone, v.heading, false, 1)
          FreezeEntityPosition(ped, 1)
          SetBlockingOfNonTemporaryEvents(ped, true)

          if not v.illegal then
               local blip = AddBlipForCoord(v.zone)
               SetBlipSprite(blip, 59)
               SetBlipScale(blip, 0.85)
               SetBlipColour(blip, 2)
               SetBlipAsShortRange(blip, true)
          end
     end
end)


Citizen.CreateThread(function()
     while not _sync do Wait(100) end
     while true do
          attente = 500
          for k,v in pairs(object) do
               local pPed = GetPlayerPed(-1)
               local pCoords = GetEntityCoords(pPed, true)
               local dst = GetDistanceBetweenCoords(pCoords, v.zone, true)
               if dst <= v.TailleZone then
                    attente = 1
                    dst = GetDistanceBetweenCoords(pCoords, v.zone, true)
                    RageUI.Text({
                        message = string.format(v.MessageZone)
                    })
                    if IsControlJustReleased(0, 38) then
                         MenuActuel = v.MenuId
                         CreateShop()
                    end  
               end
          end
          Citizen.Wait(attente)
     end
end)


function LoadModel(model)
     while not HasModelLoaded(model) do
          RequestModel(model)
          Wait(100)
     end
end

Citizen.CreateThread(function()
    local hash = GetHashKey("a_f_y_business_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "a_f_y_business_01", -627.99, -274.52, 34.57, 126.25, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("a_f_y_business_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "a_f_y_business_01", -625.38, -278.85, 34.57, 126.25, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)