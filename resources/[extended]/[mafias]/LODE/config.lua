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

Config.LODEStations = {

	LODE = {

		Blip = {
			--Coords  = vector3(107.29, -1942.40, 20.70),
			--Sprite  = 429,
			--Display = 4,
			--Scale   = 0,
			--Colour  = 19
		},

		Cloakrooms = {
			vector3(5013.4013671875,-5751.685546875,15.484435081482)
		},

		Armories = {
			vector3(5010.2534179688,-5757.1796875,15.484450340271)
		},

		Vehicles = {
			{
				Spawner = vector3(4971.126953125,-5746.8950195312,19.880208969116),
				InsideShop = vector3(4971.126953125,-5746.8950195312,19.880208969116),
				SpawnPoints = {
					{coords = vector3(4971.126953125,-5746.8950195312,19.880208969116), heading = 328.39, radius = 1.0}
				}
			}
		},

		BossActions = {
			vector3(5013.9956054688,-5754.9267578125,28.900148391724)
		}

	}
}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_SMG_MK2', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}	
	},

	gangster = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_SMG_MK2', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}
	},

	bandit = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_SMG_MK2', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}
	},

	boss = {
		{weapon = 'WEAPON_MACHETE', price = 500},
		{weapon = 'WEAPON_COMBATPISTOL', price = 5000},
		{weapon = 'WEAPON_SMG_MK2', price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', price = 15000}
	}
}

Config.AuthorizedVehicles = {
	car = {
		recruit = {
			{model = 'kuruma2', price = 12000},
			{model = 'zentorno', price = 12000},
			{model = 't20', price = 12000},
			{model = 'deveste', price = 12000},
			{model = 'toros', price = 12000},
			{model = 'brawler', price = 12000},
		},

		gangster = {
			{model = 'kuruma2', price = 12000},
			{model = 'zentorno', price = 12000},
			{model = 't20', price = 12000},
			{model = 'deveste', price = 12000},
			{model = 'toros', price = 12000},
			{model = 'brawler', price = 12000},
		},

		bandit = {
			{model = 'kuruma2', price = 12000},
			{model = 'zentorno', price = 12000},
			{model = 't20', price = 12000},
			{model = 'deveste', price = 12000},
			{model = 'toros', price = 12000},
			{model = 'brawler', price = 12000},
		},

		boss = {			
			{model = 'kuruma2', price = 12000},
			{model = 'zentorno', price = 12000},
			{model = 't20', price = 12000},
			{model = 'deveste', price = 12000},
			{model = 'toros', price = 12000},
			{model = 'brawler', price = 12000},
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
			male = {arms_2 = 0,torso_2 = 8,arms = 28,tshirt_1 = 170,pants_2 = 0,decals_2 = 0,shoes_1 = 25,shoes_2 = 0,tshirt_2 = 3,glasses_1 = 24,mask_1 = 52,chain_1 = 12,chain_2 = 0,pants_1 = 59,glasses_2 = 1,helmet_2 = 20,torso_1 = 316,helmet_1 = 104},
			female = {}
	},

	gangster = {
		male = {arms_2 = 0,torso_2 = 8,arms = 28,tshirt_1 = 170,pants_2 = 0,decals_2 = 0,shoes_1 = 25,shoes_2 = 0,tshirt_2 = 3,glasses_1 = 24,mask_1 = 52,chain_1 = 12,chain_2 = 0,pants_1 = 59,glasses_2 = 1,helmet_2 = 20,torso_1 = 316,helmet_1 = 104},
		female = {}
	},

	bandit = {
		male = {arms_2 = 0,torso_2 = 8,arms = 28,tshirt_1 = 170,pants_2 = 0,decals_2 = 0,shoes_1 = 25,shoes_2 = 0,tshirt_2 = 3,glasses_1 = 24,mask_1 = 52,chain_1 = 12,chain_2 = 0,pants_1 = 59,glasses_2 = 1,helmet_2 = 20,torso_1 = 316,helmet_1 = 104},
		female = {}
	},


	boss = {
		male = {arms_2 = 0,torso_2 = 8,arms = 28,tshirt_1 = 170,pants_2 = 0,decals_2 = 0,shoes_1 = 25,shoes_2 = 0,tshirt_2 = 3,glasses_1 = 24,mask_1 = 52,chain_1 = 12,chain_2 = 0,pants_1 = 59,glasses_2 = 1,helmet_2 = 20,torso_1 = 316,helmet_1 = 104},
		female = {}
	},
	},
}

Config.Map = {
	--{name="~p~Quartier LODE",color=27, id=378,x=107.616, y = -1940.67, z= 20.74}
  }