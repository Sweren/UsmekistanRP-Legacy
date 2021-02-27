Config = {}

Config.Locale = 'en'

--Options

Config.EnableMapsBlimps = false -- Enables the blips on the map.
Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.
Config.ChemicalsLicenseEnabled = false --Will Enable or Disable the need for a Chemicals License.
Config.MoneyWashLicenseEnabled = true --Will Enable or Disable the need for a MoneyWash License.
Config.RestrictLicenseShopAcces = true --Will Restrict the access to the license shop to players with a specific job and grade.

--The time it takes to process one item
Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

--Drug Dealer item Prices
Config.DrugDealerItems = {
	--marijuana2 = 1050,
	--coke2 = 3000,
	--heroin2 = 2200,
	--coke = 2000,
}

--License Shop Item Prices
Config.Licenses = {
	moneywash = 500000,
	chemicalslisence = 100000,
}

--Items that are included in the Chemicals Convertion menu
Config.ChemicalsConvertionItems = {
	lsa = 0,
}

--Jobs and job grades that are allowed to access the license shop.
--Only needed when RestrictLicenseShopAcces is set to true
Config.AllowedJobs = {
	MN0 = {name = 'manonegra', grade = 0},
	MN1 = {name = 'manonegra', grade = 1},
	MN2 = {name = 'manonegra', grade = 2},
	MN3 = {name = 'manonegra', grade = 3}
}

--Interior Teleport Locations
Config.Interiors = {
	Weed = {EnteranceCoords = vector3(711.18206787109,4185.4321289062,41.08264541626), ExitCoords = vector3(1066.06, -3183.45, -38.16)},
	Meth = {EnteranceCoords = vector3(1454.66, -1651.75, 68.00), ExitCoords = vector3(997.22, -3200.43, -35.39)},
	Coke = {EnteranceCoords = vector3(1744.0678710938,-1623.0041503906,112.56052398682), ExitCoords = vector3(1088.65, -3187.70, -38.00)},
	Moneywash = {EnteranceCoords = vector3(48.19, 6305.98, -1.36), ExitCoords = vector3(1138.02, -3198.94, 1.66)},
	Cartel = {EnteranceCoords = vector3(1400.51, 1127.68, 1.33), ExitCoords = vector3(1400.48, 1129.57, 1.33)},
	DocumentForgeryOffice = {EnteranceCoords = vector3(15.97, -1032.29, 1.47), ExitCoords = vector3(1173.68, -3196.67, 1.00)},
}

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 50000}
}

--Drug Zones
Config.CircleZones = {
	--Weed
	WeedField = {coords = vector3(9.2259588241577,6882.5629882812,-12.303322792053), blimpcoords = vector3(2224.64, 5577.03, 53.85), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 0, enabled = true},
	WeedProcessing = {coords = vector3(1035.86, -3205.20, -38.17), blimpcoords = vector3(-1127.86, 2708.03, 18.8), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 0.0, enabled = true},
	
	--meth
	MethProcessing = {coords = vector3(1007.27, -3197.93, 58.99), blimpcoords = vector3(1454.66, -1651.75, 68.00), name = _U('blip_methprocessing'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	HydrochloricAcidFarm = {coords = vector3(2835.9060058594,1460.5981445312,-24.437664031982), blimpcoords = vector3(2724.12, 1583.03, 24.5), name = _U('blip_HydrochloricAcidFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	SulfuricAcidFarm = {coords = vector3(-522.79681396484,-2906.080078125,-60.0047359466553), blimpcoords = vector3(3333.34, 5160.22, 18.31), name = _U('blip_SulfuricAcidFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	SodiumHydroxideFarm = {coords = vector3(-99.488838195801,-2249.8884277344,-70.778872013092), blimpcoords = vector3(3617.04, 3738.73, 28.69), name = _U('blip_SodiumHydroxideFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	
	--Chemicals
	ChemicalsField = {coords = vector3(-677.73, 2633.96, -48.51), blimpcoords = vector3(817.46, -3192.84, 5.9), name = _U('blip_ChemicalsFarm'), color = 3, sprite = 499, radius = 0.0, enabled = true},
	ChemicalsConvertionMenu = {coords = vector3(3718.8, 4533.45, -21.67), blimpcoords = vector3(3718.8, 4533.45, 21.67), name = _U('blip_ChemicalsProcessing'), color = 3, sprite = 499, radius = 0.0, enabled = true},
	
	--Coke
	CokeField = {coords = vector3(-359.49176025391,4377.4458007812,-49.308494567871), blimpcoords = vector3(-310.43, 2496.34, 76.60), name = _U('blip_CokeFarm'), color = 4, sprite = 501, radius = 0.0, enabled = true},
	CokeProcessing = {coords = vector3(1090.00, -3194.93, -38.99), blimpcoords = vector3(143.15, -1656.22, 30.49), name = _U('blip_Cokeprocessing'),color = 4, sprite = 501, radius = 0.0, enabled = true},
	
	--LSD
	lsdProcessing = {coords = vector3(91.26, 3749.31, -40.77), blimpcoords = vector3(91.26, 3749.31, 40.77), name = _U('blip_lsdprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},
	thionylchlorideProcessing = {coords = vector3(1903.98, 4922.70, -48.16), blimpcoords = vector3(1903.98, 4922.70, 48.16), name = _U('blip_thionylchlorideprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},
	
	--Heroin
	HeroinField = {coords = vector3(-1450.5172119141,2666.5207519531,-30.2288644313812), blimpcoords = vector3(16.34, 6875.94, 12.64), name = _U('blip_heroinfield'), color = 7, sprite = 497, radius = 0, enabled = true},
	HeroinProcessing = {coords = vector3(159.71, 3130.25, 43.58), blimpcoords = vector3(-62.15, 6391.40, 31.49), name = _U('blip_heroinprocessing'), color = 7, sprite = 497, radius = 0.0, enabled = true},

	--License
	LicenseShop = {coords = vector3(707.17, -962.5, -20.4), blimpcoords = vector3(707.17, -962.5, 30.4), name = _U('blip_licenseshop'),color = 9, sprite = 498, radius = 0.0, enabled = true},

	--DrugDealer
	DrugDealer = {coords = vector3(-1172.1761474609,-1572.1120605469,4.6637983322144), blimpcoords = vector3(-1172.02, -1571.98, 4.66), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 0.0, enabled = true},
	
	--MoneyWash
	MoneyWash = {coords = vector3(1119.87, -3195.44, -39.40), blimpcoords = vector3(48.19, 6305.98, 32.36), name = _U('blip_moneywash'), color = 1, sprite = 500, radius = 0.0, enabled = true},
}