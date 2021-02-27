Config = {}

Config.Locale = 'en'
Config.Chance = 100
Config.Time = 10000 -- In milliseconds
Config.UseBlackMoney = false
Config.NotifyPolice = true
Config.Limit = 3 -- Limit on items which is bought

local ubi

local camix = math.random(1,5)
--print(tostring(camix))

if tostring(camix) == '1' then 
--print("asd")
    --Config.NPC = {{x = 5405.52, y = -5170.42, z = 30.45, h = 81.79}} 
    ubi = {{x = 5405.52, y = -5170.42, z = 30.45, h = 81.79}} 

elseif tostring(camix) == '2' then 
    --Config.NPC = {{x = 5619.22, y = -5654.17, z = 9.05, h = 92.87}}
    ubi = {{x = 5619.22, y = -5654.17, z = 9.05, h = 92.87}}

elseif tostring(camix) == '3' then 
    --Config.NPC = {{x = 5524.74, y = -5919.54, z = 12.98, h = 219.79}}
    ubi = {{x = 5524.74, y = -5919.54, z = 12.98, h = 219.79}}

elseif tostring(camix) == '4' then 
    --Config.NPC = {{x = 5135.61, y = -5128.39, z = 1.12, h = 93.79}}
    ubi = {{x = 5135.61, y = -5128.39, z = 1.12, h = 93.79}}

elseif tostring(camix) == '5' then 
    --Config.NPC = {{x = 4804.74, y = -4316.15, z = 6.5, h = 124.44}}
    ubi = {{x = 4804.74, y = -4316.15, z = 6.5, h = 124.44}}

end

Config.NPC = ubi
--print(ubi)

--[[ Config.NPC = {
    --{ x = 5405.52, y = -5170.42, z = 30.45, h = 81.79 },
   -- {x = 5619.22, y = -5654.17, z = 9.05, h = 92.87},
   -- { x = 5524.74, y = -5919.54, z = 12.98, h = 219.79 },
   -- { x = 5135.61, y = -5128.39, z = 1.12, h = 93.79 },
   { x = 4804.74, y = -4316.15, z = 6.5, h = 124.44 },
} ]]
Config.MissionNPC = {
    { x = -1659.76, y = -1006.92, z = 6.19, h = 231.799 },
}
Config.Items = {
    --{name = 'WEAPON_APPISTOL', price = 1000, label = 'AP Pistol', isWeapon = true},
    {name = 'coca_seed', price = 5000, label = 'Semillas de Coca', isWeapon = false},
    {name = 'weed_seed', price = 3500, label = 'Semillas de Cannabis', isWeapon = false},
    {name = 'heroin_seed', price = 2000, label = 'Semillas de Amapola', isWeapon = false},
}
