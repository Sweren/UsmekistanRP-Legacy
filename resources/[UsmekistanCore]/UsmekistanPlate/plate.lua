--[[
--- IMAGE CONFIG HERE ---
imageUrl = "https://cdn.discordapp.com/attachments/670763523273654285/733552315960918016/plate01.png" -- Paste your image URL here (doesn't have to be from imgur)


-- The actual script --
local textureDic = CreateRuntimeTxd('duiTxd')
for i = 1, 10 do

    local object = CreateDui(imageUrl, 540, 300)
    _G.object = object

    local handle = GetDuiHandle(object)
    local tx = CreateRuntimeTextureFromDuiHandle(textureDic, 'duiTex', handle)

    AddReplaceTexture('vehshare', 'plate01', 'duiTxd', 'duiTex')

end


local textureDic = CreateRuntimeTxd('duiTxd')
for i = 1, 10 do

    local object = CreateDui('https://cdn.discordapp.com/attachments/475035463108001802/733543449030295632/plate01_n.png', 540, 300)-- this URL doesn't need to be edited, its just the 2d model for the plate
    _G.object = object

    local handle = GetDuiHandle(object)
    local tx = CreateRuntimeTextureFromDuiHandle(textureDic, 'duiTex', handle)

    AddReplaceTexture('vehshare', 'plate01_n', 'duiTxd', 'duiTex')

end
--]]

plates = {
{"plate01","https://cdn.discordapp.com/attachments/670763523273654285/733552315960918016/plate01.png",370,188},
{"plate01_n","https://cdn.discordapp.com/attachments/475035463108001802/733543449030295632/plate01_n.png",370,189},
{"plate02","https://cdn.discordapp.com/attachments/475035463108001802/734269049684623381/Sin_titulo-1.png",370,188},
{"plate02_n","https://cdn.discordapp.com/attachments/475035463108001802/733543449030295632/plate01_n.png",370,189},
{"plate03","https://cdn.discordapp.com/attachments/475035463108001802/734269049684623381/Sin_titulo-1.png",370,188},
{"plate03_n","https://cdn.discordapp.com/attachments/475035463108001802/733543449030295632/plate01_n.png",370,189},
{"plate04","https://cdn.discordapp.com/attachments/670763523273654285/733552315960918016/plate01.png",370,188},
{"plate04_n","https://cdn.discordapp.com/attachments/475035463108001802/733543449030295632/plate01_n.png",370,189},
{"plate05","https://cdn.discordapp.com/attachments/670763523273654285/733552315960918016/plate01.png",370,188},
{"plate05_n","https://cdn.discordapp.com/attachments/475035463108001802/733543449030295632/plate01_n.png",370,189},
{"yankton_plate","https://cdn.discordapp.com/attachments/670763523273654285/733552315960918016/plate01.png",370,188},
{"yankton_plate_n","https://cdn.discordapp.com/attachments/475035463108001802/733543449030295632/plate01_n.png",370,189},
}

for l, p in pairs(plates) do
    local txd = CreateRuntimeTxd("testing")
    local duiObj = CreateDui(p[2], p[3], p[4])
    local dui = GetDuiHandle(duiObj)
    local tx = CreateRuntimeTextureFromDuiHandle(txd, "test", dui)
    AddReplaceTexture("vehshare", p[1], "testing", "test")
end