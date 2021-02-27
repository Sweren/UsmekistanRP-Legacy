local isInRagdoll = false

Citizen.CreateThread(function()
 while true do
    Citizen.Wait(10)
    if isInRagdoll then
      SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
    end
  end
end)


RegisterCommand("suelo", function(source, args, rawCommand)
  if IsPedOnFoot(PlayerPedId()) then
    if isInRagdoll then
      isInRagdoll = false
    else
      isInRagdoll = true
      Wait(500)
    end
  end
end, false)

TriggerEvent('chat:addSuggestion', '/suelo', 'Desmayarse')