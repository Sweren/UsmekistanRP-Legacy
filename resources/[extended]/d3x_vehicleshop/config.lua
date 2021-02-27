Config                            = {}
Config.DrawDistance               = 50.0
Config.MarkerColor                = { r = 255, g = 0, b = 0 }
Config.EnableOwnedVehicles        = true
Config.ResellPercentage           = 50

Config.Locale                     = 'es'

Config.LicenseEnable = true -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = false

Config.Zones = {
	
	ShopEntering = {
		Pos   = { x = -1259.39, y = -367.99, z = 36.90 }, 
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 36
	},
	ShopOutside = {
		Pos   = { x = -1235.94, y = -342.14, z = 36.90 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 25.75,
		Type  = -1
	},

	--[[ Shop2 = {
		Pos   = { x = -30.08, y = -1106.94, z = 26.42 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 36
	}, ]]
	Shop3 = {
		Pos   = { x = -55.30, y = -1097.39, z = 26.35 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 36
	},

	ResellVehicle = {
		Pos   = { x = -46.14, y = -1082.73, z = -25.74 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}

Config.Zones2 = {
	
	ShopEntering = {
		Pos   = { x = -1259.39, y = -367.99, z = 36.90 },  
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 36
	},
}
