local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Robo De Banco paleto bay", colour=1, id=119, x = -104.42, y = 6476.56, z=32.51},
     {title="Robo De Banco harmony", colour=1, id=119, x = 1177.32, y = 2711.79, z = 38.1},
     {title="Robo De Banco Banham Canyon", colour=1, id=119, x = -2957.5, y = 480.97, z = 15.71},
     {title="Robo De Banco Pillbox Hill", colour=1, id=119, x = 146.46, y = -1044.67, z = 29.38},
    }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, 119)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, 1)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)