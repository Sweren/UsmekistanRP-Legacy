RegisterServerEvent("Ruby_IllShop:GetConfig")
AddEventHandler("Ruby_IllShop:GetConfig", function()
     TriggerClientEvent("Ruby_IllShop:RecieveConfig", source, object)
end)

object = {
	ExempleShopLegal = {
		MenuId = "ShopLegal1", -- Identifiant unique pour chaque shop
		illegal = false,
		TitreMenu = "Apple Shop",
		DescriptionMenu = "~b~Operador~w~",

		MessageZone = "Presiona [~b~E~w~] para abrir la tienda.",

		--ped = "mp_m_shopkeep_01",
		TailleZone = 2.0,
		zone = vector3(-627.99, -274.52, 34.57),
		heading = 126.0,

		items = {
			sim = {
			    nom = "SIM Card",
			    NomItem = "sim_card",
			  	prix = 300,
			},
			phone = {
			    nom = "Teléfono",
			    NomItem = "phone",
				prix = 700,
			},
        },		
	},
	ExempleShopLegal1 = {
		MenuId = "ShopLegal11", -- Identifiant unique pour chaque shop
		illegal = false,
		TitreMenu = "Apple Shop",
		DescriptionMenu = "~b~Operador~w~",

		MessageZone = "Presiona [~b~E~w~] para abrir la tienda.",

		--ped = "mp_m_shopkeep_01",
		TailleZone = 2.0,
		zone = vector3(-625.38, -278.85, 35.577),
		heading = 126.0,

		items = {
			sim = {
			    nom = "SIM Card",
			    NomItem = "sim_card",
			  	prix = 300,
			},
			phone = {
			    nom = "Teléfono",
			    NomItem = "phone",
				prix = 700,
			},
        },		
	},	
	
}
