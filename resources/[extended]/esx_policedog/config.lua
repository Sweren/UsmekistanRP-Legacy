K9Config = {}
K9Config = setmetatable(K9Config, {})

K9Config.OpenMenuIdentifierRestriction = false
K9Config.OpenMenuPedRestriction = false
K9Config.LicenseIdentifiers = {
	"license:32964b79426f8622c7362d35065bdaa04575c8ed"
}
K9Config.SteamIdentifiers = {
	"steam:110000116adf4c5"
}
K9Config.PedsList = {
	"s_m_y_cop_01",
	"s_m_y_sheriff_01"
}

-- Restricts the dog to getting into certain vehicles
K9Config.VehicleRestriction = false
K9Config.VehiclesList = {
	
}

-- Searching Type ( RANDOM [AVAILABLE] | VRP [NOT AVAILABLE] | ESX [NOT AVAILABLE] )
K9Config.SearchType = "Random"
K9Config.OpenDoorsOnSearch = true

-- Used for Random Search Type --
K9Config.Items = {
	{item = "coke2", illegal = true},
	{item = "Marijuana2", illegal = true},
	{item = "coke", illegal = true},
	{item = "weed2", illegal = true},
	{item = "heroin2", illegal = true},
	--{item = "Baggies", illegal = false},
	--{item = "Used Needle", illegal = false},
	--{item = "Open Container", illegal = false},
}

-- Language --
K9Config.LanguageChoice = "English"
K9Config.Languages = {
	["English"] = {
		follow = "te sigue",
		stop = "se detuvo",
		attack = "esta atacando",
		enter = "ingresando",
		exit = "salio"
	}
}