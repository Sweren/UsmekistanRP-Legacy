Config = {}
Config.Locale = 'es'

Config.MenuAlign = 'right'
Config.DrawDistance = 100

Config.UseCommand = false -- Will allow players to do /getproperties instead of having to log out & back in to see Private Garages.
Config.ParkVehicles = false -- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
Config.KickPossibleCheaters = true -- true = Kick Player that tries to Cheat Garage by changing Vehicle Hash/Plate.
Config.UseCustomKickMessage = false -- true = Sets Custom Kick Message for those that try to Cheat. Note: "Config.KickPossibleCheaters" must be true.

Config.GiveSocietyMoney = true-- true = Gives money to society_mechanic. Note: REQUIRES esx_mechanicjob.
Config.ShowVehicleLocation = true -- true = Will show Location of Vehicles in the Garage Menus.
Config.ShowSpacers = false -- true = Shows Spacers in Menus.

Config.PointMarker = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0} -- Green Color / Standard Size Circle.
Config.DeleteMarker = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
Config.PoundMarker = {Type = 1, r = 0, g = 0, b = 100, x = 1.5, y = 1.5, z = 1.0} -- Blue Color / Standard Size Circle.
Config.JPoundMarker = {Type = 1, r = 255, g = 0, b = 0, x = 1.5, y = 1.5, z = 1.0} -- Red Color / Standard Size Circle.

Config.GarageBlip = {Sprite = 357, Color = 43, Display = 2, Scale = 0.8} -- Public Garage Blip.
Config.PGarageBlip = {Sprite = 357, Color = 53, Display = 2, Scale = 0.5} -- Private Garage Blip.
Config.PoundBlip = {Sprite = 67, Color = 64, Display = 2, Scale = 0.5} -- Pound Blip.
Config.JGarageBlip = {Sprite = 357, Color = 49, Display = 2, Scale = 0.5} -- Job Garage Blip.
Config.JPoundBlip = {Sprite = 67, Color = 49, Display = 2, Scale = 0.5} -- Job Pound Blip.

Config.PoundWait = 5 -- How many Minutes someone must wait before Opening Pound Menu Again.
Config.JPoundWait = 2.5 -- How many Minutes someone must wait before Opening Job Pound Menu Again.

Config.UseDamageMult = true -- true = Costs more to Store a Broken/Damaged Vehicle.
Config.DamageMult = 2 -- Higher Number = Higher Repair Price.

Config.UsingAdvancedVehicleShop = false -- Set to true if using esx_advancedvehicleshop

Config.UseAmbulanceGarages = false -- true = Allows use of Ambulance Garages.
Config.UseAmbulancePounds = false -- true = Allows use of Ambulance Pounds.
Config.UseAmbulanceBlips = false -- true = Use Ambulance Blips.
Config.AmbulancePoundPrice = 0 -- How much it Costs to get Vehicle from Ambulance Pound.

Config.UsePoliceGarages = false -- true = Allows use of Police Garages.
Config.UsePolicePounds = false -- true = Allows use of Police Pounds.
Config.UsePoliceBlips = false -- true = Use Police Blips.
Config.PolicePoundPrice = 0 -- How much it Costs to get Vehicle from Police Pound.

Config.UseAircraftGarages = false -- true = Allows use of Aircraft Garages.
Config.UseAircraftBlips = false -- true = Use Aircraft Blips.
Config.AircraftPoundPrice = 4500 -- How much it Costs to get Vehicle from Aircraft Pound.

Config.UseBoatGarages = false -- true = Allows use of Boat Garages.
Config.UseBoatBlips = false -- true = Use Boat Blips.
Config.BoatPoundPrice = 4500 -- How much it Costs to get Vehicle from Boat Pound.

Config.UseCarGarages = true -- true = Allows use of Car Garages.
Config.UseCarBlips = false -- true = Use Car Blips.
Config.CarPoundPrice = 100 -- How much it Costs to get Vehicle from Car Pound.

Config.UsePrivateCarGarages = false -- true = Allows use of Private Car Garages.


Config.CarGarages = {
	Los_Santos = {
		Marker = vector3(1021.0533447266,-2344.1555175781,29.509552001953),
		Spawner = vector3(1023.4839477539,-2375.5856933594,30.104671478271),
		Deleter = vector3(1016.2587890625,-2354.3012695312,29.509550094604),
		Heading = 263.0
	},
}

Config.CarPounds = {
	Los_Santos = {
		Marker = vector3(408.61, -1625.47, -28.29),
		Spawner = vector3(405.64, -1643.4, -27.61),
		Heading = 229.54
	},
	
}
-- End of Cars

-- Start of Private Cars
