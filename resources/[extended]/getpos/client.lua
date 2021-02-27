RegisterCommand('pos1', function(...)
  while true do
    HelpNotification("~INPUT_PICKUP~ - Copy\n~INPUT_DETONATE~ - Stop")
    if IsControlJustPressed(0,38) then
      ShowNotification("Copied.")
      local plyPos = GetEntityCoords(GetPlayerPed(-1))
      SendNUIMessage({
        type = "Copy",
        txt  = "vector3("..plyPos.x..","..plyPos.y..","..plyPos.z..")"
      })
    elseif IsControlJustPressed(0,47) then
      ShowNotification("Stopped.")
      return
    end
    Wait(0)
  end
end)

RegisterCommand('pos2', function(...)
  while true do
    HelpNotification("~INPUT_PICKUP~ - Copy\n~INPUT_DETONATE~ - Stop")
    if IsControlJustPressed(0,38) then
      ShowNotification("Copied.")
      local plyPos = GetEntityCoords(GetPlayerPed(-1))
      local plyHead = GetEntityHeading(GetPlayerPed(-1))
      SendNUIMessage({
        type = "Copy",
        txt  = "vector4("..plyPos.x..","..plyPos.y..","..plyPos.z..","..plyHead..")"
      })
    elseif IsControlJustPressed(0,47) then
      ShowNotification("Stopped.")
      return
    end
    Wait(0)
  end
end)

HelpNotification = function(msg)
  AddTextEntry('help_notification', msg)
  BeginTextCommandDisplayHelp('help_notification')
  EndTextCommandDisplayHelp(0, false, true, -1)
end

ShowNotification = function(msg)
  AddTextEntry('show_notification', msg)
  SetNotificationTextEntry('show_notification')
  DrawNotification(false, true)
end
