Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = true
Config.MaxInService               = -1
Config.Locale = 'en'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'lp700r',  label = 'lp700r' },
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = 916.42, y = 51.26, z = 80.89 },
      Sprite  = 439,
      Display = 4,
      Scale   = 1.2,
      Colour  = 3,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 1119.3352050781, y = 262.64007568359, z = -51.040710449219 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 22,
    },

    Vaults = {
        Pos   = { x = 1119.8857421875, y = 218.13507080078, z = -49.435153961182 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 22,
    },

    Fridge = {
        Pos   = { x = 935.68, y = 6.08, z = 75.49 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 20,
    },

    Vehicles = {
       Pos          = { x = 951.96, y = 74.90, z = 75.99 },
       SpawnPoint   = { x = 952.95, y = 70.54, z = 76.24 },
       Size         = { x = 1.5, y = 1.5, z = 1.0 },
       Color        = { r = 255, g = 255, b = 0 },
       Type         = 36,
       Heading      = 207.43,
    },

    VehicleDeleters = {
       Pos   = { x = 952.95, y = 70.54, z = 76.24 },
       Size  = { x = 1.5, y = 1.5, z = 1.0 },
       Color = { r = 238, g = 0, b = 0 },
       Type  = 36,
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
        Pos = { x = 1114.15234375, y = 247.95631408691, z = -45.841018676758},
        Size = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 22,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = 1113.1105957031, y = 206.74574279785, z = -49.440086364746},
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 21,
        Items = {
            { name = 'jager',      label = _U('jager'),   price = 3 },
            { name = 'vodka',      label = _U('vodka'),   price = 10 },
            { name = 'rhum',       label = _U('rhum'),    price = 15 },
            { name = 'whisky',     label = _U('whisky'),  price = 24 },
            { name = 'tequila',    label = _U('tequila'), price = 5 },
            { name = 'martini',    label = _U('martini'), price = 5 }
        },
    },

    NoAlcool = {
        Pos   = { x = 1112.9525146484, y = 209.59515380859, z = -49.440086364746 }, 
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 21,
        Items = {
            { name = 'soda',        label = _U('soda'),     price = 4 },
            { name = 'coffee',      label = _U('coffee'),     price = 4 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 4 },
            { name = 'icetea',      label = _U('icetea'),   price = 4 },
            { name = 'energy',      label = _U('energy'),   price = 7 },
            { name = 'drpepper',    label = _U('drpepper'), price = 5 },
            { name = 'limonade',    label = _U('limonade'), price = 4 }
        },
    },

    Apero = {
        Pos   = {x = 1110.4237060547, y = 208.73934936523, z = -49.440086364746}, 
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 21,
        Items = {
            { name = 'bolcacahuetes',   label = _U('bolcacahuetes'),    price = 10 },
            { name = 'bolnoixcajou',    label = _U('bolnoixcajou'),     price = 15 },
            { name = 'bolpistache',     label = _U('bolpistache'),      price = 20 },
            { name = 'bolchips',        label = _U('bolchips'),         price = 30 },
            { name = 'saucisson',       label = _U('saucisson'),        price = 35 },
            { name = 'grapperaisin',    label = _U('grapperaisin'),     price = 20 }
        },
    },

    Ice = {
        Pos   = {x = 1111.2407226562, y = 206.42811584473, z = -49.440086364746},
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 255, b = 255 },
        Type  = 21,
        Items = {
            { name = 'ice',     label = _U('ice'),      price = 1 },
            { name = 'menthe',  label = _U('menthe'),   price = 2 }
        },
    },

}


-----------------------
----- TELEPORTERS -----

Config.TeleportZones = {
--[[
  EnterBuilding = {
    Pos       = { x = 1121.2041, y = 221.952, z = -49.43 },
    Size      = { x = 1.5, y = 1.5, z = 1.0 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 0,
    Hint      = _U('e_to_enter_1'),
    Teleport  = { x = 1121.29, y = 214.99, z = -49.44 }
  },

  ExitBuilding = {
   Pos       = { x = 1121.15, y = 215.73, z = -49.44 },
   Size      = { x = 1.5, y = 1.5, z = 1.0 },
   Color     = { r = 128, g = 128, b = 128 },
   Marker    = 0,
   Hint      = _U('e_to_exit_1'),
   Teleport  = { x = 1121.2041, y = 221.952, z = -49.43 },
  },

  Entercomptoir = {
    Pos       = { x = 1099.950, y = 224.976, z = -48.99 },
   Size      = { x = 1.5, y = 1.5, z = 1.0 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 0,
    Hint      = _U('e_to_enter_2'),
    Teleport  = { x = 1100.06, y = 223.38, z = -48.74 },
  },
   --]]
  Exitcomptoir = {
    Pos       = { x = 1114.79, y = 243.97, z = -45.840 },
    Size      = { x = 1.5, y = 1.5, z = 1.0 },
    Color     = { r = 238, g = 0, b = 0 },
    Marker    = 0,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = 1121.18, y = 213.477, z = -49.44 },
  },
 
    EnterVIP = {
    Pos       = { x = 1121.18, y = 213.477, z = -49.44 },
    Size      = { x = 1.5, y = 1.5, z = 1.0 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 0,
    Hint      = _U('e_to_enter_3'),
    Teleport  = { x = 1114.79, y = 243.97, z = -45.840 },
  },

}
