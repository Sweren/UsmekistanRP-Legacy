Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPeds           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXService           = true -- enable esx service?
Config.MaxInService               = 99

Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(473.16134643555, -986.80786132812, 25.734661102295)
		},

		Armories = {
			vector3(471.34063720703,-991.33898925781,25.722818374634)
		},

		Vehicles = {
			{
				Spawner = vector3(460.80068969727, -990.10504150391, 25.729686737061),
				InsideShop = vector3(463.25463867188,-1017.1885375977,28.084451675415),
				SpawnPoints = {
					{coords = vector3(425.89624023438, -976.46319580078,25.729679107666), heading = 90.0, radius = 1.0},
					{coords = vector3(425.75354003906, -979.45263671875, 25.729681015015), heading = 90.0, radius = 1.0},
					{coords = vector3(425.59136962891, -982.20343017578, 25.729681015015), heading = 90.0, radius = 1.0},
					{coords = vector3(425.8596496582, -984.86206054688, 25.729681015015), heading = 90.0, radius = 1.0},
					{coords = vector3(425.8786315918,-987.73937988281,25.729679107666), heading = 90.0, radius = 1.0}
				}
			},


		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(473.4094543457,-1006.1579589844,30.701488494873)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		
	},

	officer = {
		
	},

	sergeant = {
		
	},

	lieutenant = {
		
		--[[ {weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 10000}, ]]
		
	},

	boss = {
		--[[ {weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 0},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 0},
		{weapon = 'WEAPON_HEAVYSNIPER', components = {2000, 6000, nil}, price = 0},
		{weapon = 'GADGET_PARACHUTE', price = 0}, ]]
		
	}
}

Config.AuthorizedVehicles = {
	car = {
		recruit = {
			{model = 'poltwizy', price = 1000},
		},

    officer = { 
	{model = 'poltwizy', price = 1000},
      {model = 'psp_bmwgs', price = 1000},
	  {model = 'jtd19tundra', price = 25000},
	  {model = 'jtdbmwm5', price = 25000},
	  {model = 'hiluxc', price = 25000},
    },

    sergeant = {
	{model = 'poltwizy', price = 1000},
      {model = 'psp_bmwgs', price = 1000},
	  {model = 'jtd19tundra', price = 25000},
	  {model = 'jtdbmwm5', price = 25000},
	  {model = 'hiluxc', price = 25000},
	  {model = 'mclarenpd', price = 25000},
    },

    lieutenant = {
	{model = 'poltwizy', price = 1000},
      {model = 'psp_bmwgs', price = 1000},
	  {model = 'jtd19tundra', price = 25000},
	  {model = 'jtdbmwm5', price = 25000},
	  {model = 'hiluxc', price = 25000},
	  {model = 'mclarenpd', price = 25000},
    },

    boss = {
		{model = 'poltwizy', price = 1000},
      {model = 'psp_bmwgs', price = 1000},
      {model = 'pbus', price = 1000},
      {model = 'bcat2', price = 1000},
	  {model = 'bcat', price = 1000},
	  {model = 'jtd19tundra', price = 25000},
	  {model = 'jtdbmwm5', price = 25000},
	  {model = 'hiluxc', price = 25000},
	  {model = 'mclarenpd', price = 25000},
    }
	},

	helicopter = {
		recruit = {},

		officer = {},

		sergeant = {},

		lieutenant = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},

		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}

Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	recruit = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 193,   torso_2 = 8,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 35,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = 45,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	officer = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 193,   torso_2 = 8,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 35,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 193,   torso_2 = 8,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 35,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 1,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 193,   torso_2 = 8,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 35,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 2,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 193,   torso_2 = 8,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 35,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 3,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	bullet_wear = { -- CHALECO BACHILLER
		male = {
			bproof_1 = 25,  bproof_2 = 0
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},
	
	estandar = {  -- UNIFORME GENERAL
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 193,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms_1 = 1, 	arms_2 = 0,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 60,   shoes_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			bproof_1 = 0, bproof_2 = 0,
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	},

	operativos = { -- UNIFORME PATRULLERO
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 154,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms_1 = 17, arms_2 = 0,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 60,   shoes_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,   mask_2 = 0,
			bproof_1 = 19, bproof_2 = 0,
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	},
}
