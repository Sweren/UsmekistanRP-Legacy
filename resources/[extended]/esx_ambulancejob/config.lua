Config                            = {}

Config.DrawDistance               = 20.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).

Config.Marker                     = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}

Config.ReviveReward               = 80  -- Revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)
Config.LoadIpl                    = false -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

Config.EarlyRespawnTimer          = 60000 * 10  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 20 -- time til the player bleeds out

Config.EnablePlayerManagement     = true -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = {coords = vector3(-450.34057617188,-340.70974731445,34.501766204834), heading = 77.8}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(-466.63479614258,-326.40426635742,121.289894104),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(-442.89562988281,-312.244140625,33.910545349121)
		},

		Pharmacies = {
			vector3(-490.80471801758,-339.80529785156,41.320728302002)
		},

		Vehicles = {
			{
				Spawner = vector3(-425.73880004883,-347.72830200195,24.229370117188),
				InsideShop = vector3(-437.52172851562,-351.42269897461,24.230401992798),
				Marker = {type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(-422.58197021484,-361.2190246582,23.799074172974), heading = 18.08, radius = 1.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(340.73,-588.05,74.16),
				InsideShop = vector3(350.07,-587.59,74.16),
				Marker = {type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(350.07,-587.59,74.16), heading = 271.08, radius = 10.0}
				}
			}
		},

		FastTravels = {
			--[[
			{
				From = vector3(294.7, -1448.1, 29.0),
				To = {coords = vector3(272.8, -1358.8, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(275.3, -1361, 23.5),
				To = {coords = vector3(295.8, -1446.5, 28.9), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = {coords = vector3(333.1, -1434.9, 45.5), heading = 138.6},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = {coords = vector3(249.1, -1369.6, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = {coords = vector3(320.9, -1478.6, 28.8), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = {coords = vector3(238.6, -1368.4, 23.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			}--]]
		},

		FastTravelsPrompt = {--[[
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = {coords = vector3(251.9, -1363.3, 38.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = {coords = vector3(235.4, -1372.8, 26.3), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			}--]]
		}

	}
}

Config.AuthorizedVehicles = {
	car = {
		ambulance = {
			{model = 'polcaptivac140', price = 5000},
			{model = 'africat', price = 3000},
		},

		doctor = {
			{model = 'polcaptivac140', price = 5000},
			{model = 'africat', price = 3000},
			{model = '50thpolstang', price = 10000},

		},

		chief_doctor = {
			{model = 'polcaptivac140', price = 5000},
			{model = 'africat', price = 3000},
			{model = 'medvac', price = 1000},
			{model = '50thpolstang', price = 10000},
		},

		boss = {
			{model = 'polcaptivac140', price = 5000},
			{model = 'africat', price = 3000},
			{model = 'medvac', price = 1000},
			{model = 'dodgeems', price = 1000},
			{model = '50thpolstang', price = 10000},
		}
	},

	helicopter = {
		ambulance = {},

		doctor = {},

		chief_doctor = {
			{model = 'aw139', price = 200000}
		},

		boss = {
			{model = 'aw139', price = 100000}
		},
	}
}
