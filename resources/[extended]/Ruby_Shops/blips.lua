local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},-627.99, -274.52, 34.57
	{title="Tienda iFruit", colour=4, id=459, x = -643.24,   y = -285.72,  z = 36.763}, -- Location to obtain supplies needed to make cocaine at Drug Processing Location
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.2)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)