Config = {}
Config.DrawDistance = 100.0

Config.EnablePlayerManagement = false
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement = false
Config.EnableHelicopters = false
Config.EnableMoneyWash = false
Config.MaxInService = -1
Config.Locale = 'en'

Config.MissCraft = 10 -- %

Config.AuthorizedVehicles = {
    { name = 'rentalbus',  label = 'Vanilla Unicorn Bus' },
}

Config.Blips = {
    Blip = {
      Pos     = { x = -564.52, y = 272.96, z = 95.84 },
      Sprite  = 79,
      Display = 4,
      Scale   = 1.0,
      Colour  = 60,
    },
}

Config.Zones = {
    Cloakrooms = {
        Pos   = { x = 105.111, y = -1303.221, z = 27.788 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 27,
    },

    Vaults = {
        Pos   = { x = 93.406, y = -1291.753, z = 28.288 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 23,
    },

    Fridge = {
        Pos   = { x = 135.478, y = -1288.615, z = 28.289 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 23,
    },

    Vehicles = {
        Pos          = { x = 137.177, y = -1278.757, z = 28.371 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    VehicleDeleters = {
        Pos   = { x = 133.203, y = -1265.573, z = 28.396 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },

--[[
    Helicopters = {
        Pos          = { x = 137.177, y = -1278.757, z = 28.371 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },
    HelicopterDeleters = {
        Pos   = { x = 133.203, y = -1265.573, z = 28.396 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },
]]--

    BossActions = {
        Pos   = { x = 94.951, y = -1294.021, z = 28.268 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------
    Flacons = {
        Pos   = { x = -562.28, y = 286.1, z = 81.2 }, 
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 23,
        Items = {
            { name = 'jagermeister', label = "Jägermeister",   price = 1 },
            { name = 'vodka',      label = "Vodka",   price = 1 },
            { name = 'rum',       label = "Ron",    price = 1 },
            { name = 'whisky',     label = "Whisky",  price = 1 },
            { name = 'brandy',    label = "Brandy", price = 1 },
            { name = 'tequila',    label = "Tequila", price = 1 },
            { name = 'wine',    label = "Vino", price = 1 },
        },
    },
}