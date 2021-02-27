Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 255, g = 255, b = 255}

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- enable si vous utiliser esx_identity
Config.EnableLicenses             = false -- enable si vous utiliser esx_license

Config.EnableHandcuffTimer        = true -- activer la minuterie des menottes, détachera le joueur après la fin du temps
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- activer les blips pour les flics en service, nécessite esx_society
Config.EnableCustomPeds           = false -- activer les peds personnalisés dans le vestiaire. Voir Config.CustomPeds ci-dessous pour personnaliser les peds

Config.EnableESXService           = false -- activer esx service ?
Config.MaxInService               = 5

Config.Locale                     = 'fr'

Config.vercettiStations = {

	vercetti = {

		Blip = {
			--Coords  = vector3(107.29, -1942.40, 20.70),
			--Sprite  = 429,
			--Display = 4,
			--Scale   = 0,
			--Colour  = 19
		},

		Cloakrooms = {
			vector3(-437.4016418457,1082.0970458984,306.66424560547)
		},

		Armories = {
			vector3(-460.52792358398,1128.9630126953,301.22424316406)
		},

		Vehicles = {
			{
				Spawner = vector3(-419.72534179688,1202.0871582031,325.64135742188),
				InsideShop = vector3(-419.72534179688,1202.0871582031,325.64135742188),
				SpawnPoints = {
					{coords = vector3(-419.72534179688,1202.0871582031,325.64135742188), heading = 232.39, radius = 1.0}
				}
			}
		},

		BossActions = {
			vector3(-437.81900024414,1078.7708740234,306.66424560547)
		}

	}
}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_MICROSMG', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}	
	},

	gangster = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_MICROSMG', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}
	},

	bandit = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_MICROSMG', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}
	},

	boss = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_MICROSMG', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}
	}
}

Config.AuthorizedVehicles = {
	car = {
		recruit = {
			{model = 'sanchez2', price = 3050},
			{model = 'ellie', price = 5000},
			{model = 'dubsta3', price = 8000},
			{model = 'prototipo', price = 12000},
		},

		gangster = {
			{model = 'sanchez2', price = 3050},
			{model = 'ellie', price = 5000},
			{model = 'dubsta3', price = 8000},
			{model = 'prototipo', price = 12000},
		},

		bandit = {
			{model = 'sanchez2', price = 3050},
			{model = 'ellie', price = 5000},
			{model = 'dubsta3', price = 8000},
			{model = 'prototipo', price = 12000},
		},

		boss = {			
			{model = 'sanchez2', price = 3050},
			{model = 'ellie', price = 5000},
			{model = 'dubsta3', price = 8000},
			{model = 'prototipo', price = 12000},
		}
	},
}

Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'families Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {}
	}

Config.Uniforms = {
	--[[recruit = {
		male = {
			tshirt_1 = 57,  tshirt_2 = 0,
			torso_1 = 143,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 43,   pants_2 = 0,
			shoes_1 = 22,   shoes_2 = 4,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		},
		female = {
			tshirt_1 = 0,  tshirt_2 = 0,
			torso_1 = 0,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = -1,
			pants_1 = 0,   pants_2 = 0,
			shoes_1 = 0,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		}
	},

	gangster = {
		male = {
			tshirt_1 = 57,  tshirt_2 = 0,
			torso_1 = 143,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 43,   pants_2 = 0,
			shoes_1 = 22,   shoes_2 = 4,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		},
		female = {
			tshirt_1 = 0,  tshirt_2 = 0,
			torso_1 = 0,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = -1,
			pants_1 = 0,   pants_2 = 0,
			shoes_1 = 0,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		}
	},

	bandit = {
		male = {
			tshirt_1 = 57,  tshirt_2 = 0,
			torso_1 = 143,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 43,   pants_2 = 0,
			shoes_1 = 22,   shoes_2 = 4,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		},
		female = {
			tshirt_1 = 0,  tshirt_2 = 0,
			torso_1 = 0,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = -1,
			pants_1 = 0,   pants_2 = 0,
			shoes_1 = 0,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		}
	},


	boss = {
		male = {
			tshirt_1 = 57,  tshirt_2 = 0,
			torso_1 = 143,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 43,   pants_2 = 0,
			shoes_1 = 22,   shoes_2 = 4,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		},
		female = {
			tshirt_1 = 0,  tshirt_2 = 0,
			torso_1 = 0,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = -1,
			pants_1 = 0,   pants_2 = 0,
			shoes_1 = 0,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
		}
	},--]]
}

Config.Map = {
	--{name="~p~Quartier vercetti",color=27, id=378,x=107.616, y = -1940.67, z= 20.74}
  }