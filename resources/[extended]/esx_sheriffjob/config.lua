Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 255, g = 227, b = 70}

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPeds           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXService           = true-- enable esx service?
Config.MaxInService               = 99

Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(1853.8046875,3686.990234375,34.267086029053),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 36
		},

		Cloakrooms = {
			vector3(1848.6785888672,3689.4143066406,34.267036437988)
		},

		Armories = {
			vector3(1857.1512451172,3688.0285644531,34.267086029053)
		},

		Vehicles = {
			{
				Spawner = vector3(1863.9285888672,3681.9340820312,33.702175140381),
				InsideShop = vector3(1843.2449951172,3666.4777832031,33.740833282471),
				SpawnPoints = {
					{coords = vector3(1866.0205078125,3698.9650878906,33.368724822998), heading = 206.0, radius = 1.0},
				}
			},
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, -43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(1852.3116455078,3689.8662109375,34.267086029053)
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
			{model = 'sheriff', price = 1000},
			{model = 'sheriff2', price = 1000},
			{model = 'leecounty1', price = 1000},
		},
		

    officer = {
		{model = 'sheriff', price = 1000},
			{model = 'sheriff2', price = 1000},
			{model = 'leecounty1', price = 1000},
    },

    sergeant = {
		{model = 'sheriff', price = 1000},
			{model = 'sheriff2', price = 1000},
			{model = 'leecounty1', price = 1000},
	},

    lieutenant = {
		{model = 'sheriff', price = 1000},
			{model = 'sheriff2', price = 1000},
			{model = 'leecounty1', price = 1000},
	},
    

    boss = {
		{model = 'sheriff', price = 1000},
			{model = 'sheriff2', price = 1000},
			{model = 'leecounty1', price = 1000},
	},
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

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	},

	casco = {
		male = {
			helmet_1 = 115,  helmet_2 = 0,
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	},

	
	estandar = {
		male = {
			tshirt_1 = 54,  tshirt_2 = 0,
			torso_1 = 183,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 2,
			pants_1 = 32,   pants_2 = 0,
			shoes_1 = 13,   shoes_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			helmet_1 = 33,  helmet_2 = 0,
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	},

	operativos = {
		male = {
			tshirt_1 = 11,  tshirt_2 = 0,
			torso_1 = 36,   torso_2 = 4,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 10,   pants_2 = 0,
			shoes_1 = 21,   shoes_2 = 0,
			helmet_1 = 33,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			bproof_1 = 0,  bproof_2 = 0,
			mask_1 = 0,   mask_2 = 0
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	},

	polcivil = {
		male = {
			tshirt_1 = 56,  tshirt_2 = 0,
			torso_1 = 155,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 96,
			pants_1 = 102,   pants_2 = 0,
			shoes_1 = 2,   shoes_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	}
}
