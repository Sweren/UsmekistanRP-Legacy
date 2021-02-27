Config                            = {}
Config.DrawDistance               = 100
Config.MarkerColor                = {r = 120, g = 120, b = 240}
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 100

Config.Locale                     = 'fr'

Config.LicenseEnable = true -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = false

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(205.35064697266,-178.74180603027,53.605499267578),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},

	ShopInside = {
		Pos     = vector3(215.16125488281,-182.10107421875,63.790241241455),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 70.0,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(216.18374633789,-167.62182617188,56.271781921387),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 253.0,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(-32.0, -1114.2, 25.4),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(-18.2, -1078.5, 25.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(-45.046794891357,-1081.4768066406,2.687448501587),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
