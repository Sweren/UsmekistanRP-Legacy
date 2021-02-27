Config                            = {}
Config.Locale                     = 'en'

--- #### BASICS
Config.EnablePrice = true -- false = bikes for free
Config.EnableEffects = true
Config.EnableBlips = true


--- #### PRICES	
Config.PriceTriBike = 100
Config.PriceScorcher = 75
Config.PriceCruiser = 25
Config.PriceBmx = 50


--- #### MARKER EDITS
Config.TypeMarker = 27
Config.MarkerScale = { x = 2.000, y = 2.000, z = 0.500}
Config.MarkerColor = { r = 0, g = 255, b = 255}
	
Config.MarkerZones = { 
    {x = -139.06, y = 6276.72, z = 30.37},--Paleto
    {x = 1854.84, y = 2624.25, z = 44.67},--Więzienie
    {x = -464.95, y = -351.20, z = 33.50},--SzpitalLS vector3(-464.9577331543,-351.20681762695,34.50163269043)
    {x = -275.91, y = -1018.69, z = 30.37},--LS
    {x = -1223.77, y = -1495.48, z = 4.35},--Plaża
    {x = -1285.58, y = 294.69, z = 64.86},--Resp
    {x = -1016.48, y = -2696.09, z = 12.98},--Resp
}


-- Edit blip titles
Config.BlipZones = { 
    {title="Alquiler de bicicletas", colour=84, id=226, x = -139.06, y = 6276.72, z = 31.43},
    {title="Alquiler de bicicletas", colour=84, id=226, x = 1854.84, y = 2624.25, z = 44.67},
    {title="Alquiler de bicicletas", colour=84, id=226, x = -464.95, y = -351.20, z = 33.50},
    {title="Alquiler de bicicletas", colour=84, id=226, x = -275.91, y = -1018.69, z = 30.37},
    {title="Alquiler de bicicletas", colour=84, id=226, x = -1223.77, y = -1495.48, z = 4.35},
    {title="Alquiler de bicicletas", colour=84, id=226, x = -1285.58, y = 294.69, z = 64.86},
    {title="Alquiler de bicicletas", colour=84, id=226, x = -1016.48, y = -2696.09, z = 13.98},
 }
