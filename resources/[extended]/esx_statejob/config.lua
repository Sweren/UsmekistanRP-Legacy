Config                            = {}
Config.DrawDistance               = 20.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.StateStations = {

  State = {

    Blip = {
      Pos     = { x = -550.53, y = -194.21, z = 89.25 }, 
      Sprite  = 419,
      Display = 4,
      Scale   = 1.2,
--      Colour  = 29,
    },
	
    AuthorizedWeapons = {
      { name = 'WEAPON_FLASHLIGHT',       price = 800 },
	  { name = 'WEAPON_NIGHTSTICK',       price = 200 },
      { name = 'WEAPON_COMBATPISTOL',     price = 300 },
	  { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
    },

	  AuthorizedVehicles = {
		  { name = 'stretch',  label = 'Limusina' },
		  { name = 'kuruma2',    label = 'Escolta' },
		  { name = 'baller6',   label = 'Escolta Todoterreno 1' },
		  { name = 'volatus',      label = 'Helicoptero 1' },
		  { name = 'swift',   label = 'Helicoptero 2' },
		  { name = 'dubsta2',       label = 'Escolta Todoterreno 2' },
	  },

    Cloakrooms = {
      { x = -549.22, y = -204.02, z = 46.54 },  
	  Heading    = 357.10,
    },

    Armories = {
      { x = -551.91, y = -199.38, z = 46.54 }, 
	  Heading    = 17.57,
    },

    Vehicles = {
      {
        Spawner    = { x = -527.29, y = -249.78, z = 34.76 },
        SpawnPoint = { x = -542.46, y = -253.36, z = 35.05 }, 
        Heading    = 90.0,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 20.312, y = 535.667, z = 173.627 },
        SpawnPoint = { x = 3.40, y = 525.56, z = 177.919 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -506.28, y = -232.27, z = 35.44 }, 
    },

    BossActions = {
      { x = -544.20, y = -197.94, z = 46.54 },  
	  Heading    = 3.36,
    },

  },
  
}

Config.PublicZones = {
  EnterBuilding = {
    Pos       = { x = -429.612, y = 1109.584, z = -326.682 },
    Size      = { x = 3.0, y = 3.0, z = 0.2 },
    Color     = { r = 64, g = 0, b = 74 },
    Marker    = 1,
    Blip      = false,
    Name      = "Gobernación",
    Type      = "teleport",
    Hint      = "Presione ~INPUT_PICKUP~ para entrar.",
    Teleport  = { x = -1392.563, y =  -480.549, z = 72.0421 }
  },

  ExitBuilding = {
    Pos       = { x = -1400.083, y = -479.072, z = -71.042 },
    Size      = { x = 3.0, y = 3.0, z = 0.2 },
    Color     = { r = 64, g = 0, b = 74 },
    Marker    = 1,
    Blip      = false,
    Name      = "Gobernación",
    Type      = "teleport",
    Hint      = "Presione ~INPUT_PICKUP~ para salir.",
    Teleport  = { x = -429.612, y = 1109.584, z = 327.682},
  },
   ----
  EnterBuilding2 = {
    Pos       = { x = -1389.1787109378, y = -585.46215820313, z = -29.219924926758},
    Size      = { x = 3.0, y = 3.0, z = 0.2 },
    Color     = { r = 64, g = 0, b = 74 },
    Marker    = 1,
    Blip      = false,
    Name      = "Gobernación",
    Type      = "teleport",
    Hint      = "Presione ~INPUT_PICKUP~ para entrar.",
    Teleport  = { x = -1386.8133544922, y =  -589.45202636719, z = -29.319534301758 }
  },

  ExitBuilding2 = {
    Pos       = { x = -1386.8133544922, y = -589.45202636719, z = -29.319534301758 },
    Size      = { x = 3.0, y = 3.0, z = 0.2 },
    Color     = { r = 64, g = 0, b = 74 },
    Marker    = 1,
    Blip      = false,
    Name      = "Gobernación",
    Type      = "teleport",
    Hint      = "Presione ~INPUT_PICKUP~ para salir.",
    Teleport  = { x =-1389.1787109378, y = -585.46215820313, z = -29.219924926758},
  }, 
 ---------
  EnterBuilding3 = {
    Pos       = { x = 14.081891059875, y = -1105.6704101563, z = -28.797004699707},
    Size      = { x = 1.5, y = 1.5, z = 0.2 },
    Color     = { r = 64, g = 0, b = 74 },
    Marker    = 1,
    Blip      = false,
    Name      = "Gobernación",
    Type      = "teleport",
    Hint      = "Presione ~INPUT_PICKUP~ para entrar.",
    Teleport  = { x = 12.944341659546, y =  -1109.8620605469, z = -28.797010421753 }
  },

  ExitBuilding3 = {
    Pos       = { x = 13.325618743896, y = -1107.7855224609, z = -28.797010421753 },
    Size      = { x = 1.5, y = 1.5, z = 0.2 },
    Color     = { r = 64, g = 0, b = 74 },
    Marker    = 1,
    Blip      = false,
    Name      = "Gobernación",
    Type      = "teleport",
    Hint      = "Presione ~INPUT_PICKUP~ para salir.",
    Teleport  = { x =15.142413139343, y = -1105.2983398438, z = -28.797008514404},
  },  
  
}
