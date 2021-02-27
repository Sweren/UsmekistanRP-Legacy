Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 255, g = 255, b = 255}

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- enable si vous utiliser esx_identity
Config.EnableLicenses             = true -- enable si vous utiliser esx_license

Config.EnableHandcuffTimer        = true -- activer la minuterie des menottes, détachera le joueur après la fin du temps
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- activer les blips pour les flics en service, nécessite esx_society
Config.EnableCustomPeds           = false -- activer les peds personnalisés dans le vestiaire. Voir Config.CustomPeds ci-dessous pour personnaliser les peds

Config.EnableESXService           = false -- activer esx service ?
Config.MaxInService               = 10

Config.Locale                     = 'fr'

Config.sijinStations = {

	gace = {

		Blip = {
			Coords  = vector3(107.29, -1942.40, 20.70),
			Sprite  = 429,
			Display = 4,
			Scale   = 0,
			Colour  = 19
		},

		Cloakrooms = {
			vector3(-455.34,6016.13,31.76)
		},

		Armories = {
			vector3(-452.27,6019.86,31.76)
		},

		Vehicles = {
			{
				Spawner = vector3(-450.06,6003.32,31.49),
				InsideShop = vector3(-440.76,5988.28,35.31),
				SpawnPoints = {
					{coords = vector3(-455,6001.78,31.34), heading = 86.27, radius = 1.0}
				}
			}
		},

		BossActions = {
			vector3(-438.5,6003.08,36.81)
		}

	}
}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 1},
		{weapon = 'WEAPON_HEAVYSNIPER', price = 1},
		{weapon = 'WEAPON_BAT', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 1}
	},

	gangster = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 1},
		{weapon = 'WEAPON_HEAVYSNIPER', price = 1},
		{weapon = 'WEAPON_BAT', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 1}
	},

	bandit = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 1},
		{weapon = 'WEAPON_HEAVYSNIPER', price = 1},
		{weapon = 'WEAPON_BAT', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 1}
	},

	boss = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_FIREEXTINGUISHER', price = 1},
		{weapon = 'WEAPON_HEAVYSNIPER', price = 1},
		{weapon = 'WEAPON_BAT', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 1}
	},

}

Config.AuthorizedVehicles = {
	car = {
		recruit = {
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1},
			{model = 'limo2', price = 1},
            {model = 'polamggtr', price = 1},
		},

		gangster = {
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1},
			{model = 'limo2', price = 1},
            {model = 'polamggtr', price = 1},
		},

		bandit = {
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1},
			{model = 'limo2', price = 1},
            {model = 'polamggtr', price = 1},
		},

		boss = {			
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1},
			{model = 'limo2', price = 1},
            {model = 'polamggtr', price = 1},
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
	recruit = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 188,   torso_2 = 6,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 10,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
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
				tshirt_1 = 15,  tshirt_2 = 0,
				torso_1 = 188,   torso_2 = 6,
				decals_1 = 0,   decals_2 = 0,
				arms = 1,
				pants_1 = 10,   pants_2 = 0,
				shoes_1 = 10,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 0,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 188,   torso_2 = 6,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 10,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 188,   torso_2 = 6,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 10,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
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
}

--Config.Map = {
	--{name="~p~Base Sijin",color=27, id=378,x=107.616, y = -1940.67, z= 20.74}
  --}