-- GORILLA LEAKS! discord.gg/GdzvtVt | BEST LEAKS SERVER

local callback = false

-- GORILLA LEAKS! discord.gg/GdzvtVt | BEST LEAKS SERVER

Open = function(header,style,cb)
  callback = cb
  SetNuiFocus(true,true)
  SendNUIMessage({
    type   = ("open"),
    header = (header or "Input"),
    style  = (style or "Native")
  })
end

-- GORILLA LEAKS! discord.gg/GdzvtVt | BEST LEAKS SERVER

Posted = function(data)
  SetNuiFocus(false,false)
  if callback then
    callback(data.message)
  end
end

-- GORILLA LEAKS! discord.gg/GdzvtVt | BEST LEAKS SERVER

RegisterNUICallback('post', Posted)

-- GORILLA LEAKS! discord.gg/GdzvtVt | BEST LEAKS SERVER

AddEventHandler('Input:Open',Open)
exports("Open",Open)


-- GORILLA LEAKS! discord.gg/GdzvtVt | BEST LEAKS SERVER