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

Config.compayasosStations = {

	compayasos = {

		Blip = {
			--Coords  = vector3(107.29, -1942.40, 20.70),
			--Sprite  = 429,
			--Display = 4,
			--Scale   = 0,
			--Colour  = 19
		},

		Cloakrooms = {
			--vector3(-2678.44, 1313.71, 152.01)
		},

		Armories = {
			vector3(-100.17314910889,-1635.0776367188,32.106018066406)
		},

		Vehicles = {
			{
				Spawner = vector3(-130.26954650879,-1617.0155029297,32.611682891846),
				InsideShop = vector4(-90.736114501953,-1620.7062988281,28.751165390015,140.57664489746),
				SpawnPoints = {
					{coords = vector3(-134.94079589844,-1633.2854003906,31.534385681152), heading = 143.36627197266, radius = 6.0}
				}
			}
		},

		BossActions = {
			vector3(-87.501892089844,-1636.9781494141,31.7112865448)
		}

	}
}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_PISTOL', price = 30000},
		{weapon = 'WEAPON_MACHETE', price = 10000},
		{weapon = 'WEAPON_MICROSMG', price = 30000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000}	
	},

	gangster = {
		{weapon = 'WEAPON_PISTOL', price = 30000},
		{weapon = 'WEAPON_MACHETE', price = 10000},
		{weapon = 'WEAPON_MICROSMG', price = 30000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000}
	},

	bandit = {
		{weapon = 'WEAPON_PISTOL', price = 30000},
		{weapon = 'WEAPON_MACHETE', price = 10000},
		{weapon = 'WEAPON_MICROSMG', price = 30000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000}
	},

	boss = {
		{weapon = 'WEAPON_PISTOL', price = 30000},
		{weapon = 'WEAPON_MACHETE', price = 10000},
		{weapon = 'WEAPON_MICROSMG', price = 30000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000}
	}
}

Config.AuthorizedVehicles = {
	car = {
		recruit = {
			{model = 'enduro', price = 1850},
			{model = 'bati', price = 3050},
			{model = 'mesa3', price = 4500},
			{model = 'contender', price = 6000}
		},

		gangster = {
			{model = 'enduro', price = 1850},
			{model = 'bati', price = 3050},
			{model = 'mesa3', price = 4500},
			{model = 'contender', price = 6000}
		},

		bandit = {
			{model = 'enduro', price = 1850},
			{model = 'bati', price = 3050},
			{model = 'mesa3', price = 4500},
			{model = 'contender', price = 6000}
		},

		boss = {			
			{model = 'enduro', price = 1850},
			{model = 'bati', price = 3050},
			{model = 'mesa3', price = 4500},
			{model = 'contender', price = 6000}
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
	--{name="~p~Quartier compayasos",color=27, id=378,x=107.616, y = -1940.67, z= 20.74}
  }