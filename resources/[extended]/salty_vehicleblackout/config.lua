Config = {}

-- Amount of Time to Blackout, in milliseconds
-- 2000 = 2 seconds
Config.BlackoutTime = 2500

-- Enable blacking out due to vehicle damage
-- If a vehicle suffers an impact greater than the specified value, the player blacks out
Config.BlackoutFromDamage = false
Config.BlackoutDamageRequired = 50
Config.BlackoutDamageRequired2 = 69

-- Enable blacking out due to speed deceleration
-- If a vehicle slows down rapidly over this threshold, the player blacks out
Config.BlackoutFromSpeed = true
Config.BlackoutSpeedRequired = 100
Config.BlackoutSpeedRequired2 = 160

-- Enable the disabling of controls if the player is blacked out
Config.DisableControlsOnBlackout = true



