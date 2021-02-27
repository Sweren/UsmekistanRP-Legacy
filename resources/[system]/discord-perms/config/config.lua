Config = {}
Config.Locale = 'es'

Config.AntiResourceStopCheck = false -- banea si un jugador para un script
Config.AntiSpectate = true -- Banea si un jugador usa el modo spectate
Config.AntiBMCGLOBAL = true --Detecta si un jugador ejecuta un executor
Config.AntiCMD = true -- Detecta si un jugador startea otro script o mennu .lua
Config.AntiCheatEngine = true -- Detecta si un jugador usa el Cheat Engine
Config.AntiInyection = true --Banea si un jugador se injecta un menu
Config.AntiInyectionv2 = true --Banea si un jugador se injecta un menu
Config.AntiInyectionv3 = true --Banea si un jugador se injecta un menu
Config.AntiACBypass = true --Detecta si intenta omitir el AC
Config.AntiCheat = true -- Activa el AC
Config.AntiCarDetroy = false --Detecta si un coche esta roto y lo elimina
Config.AntiGodmode = false -- Detecta si un jugador tiene GodMode
Config.AntiBlips = false  -- Detecta si un jugador tiene los blips de los jugadores
Config.PlayerProtection = false -- Proteccion para el jugador de explosiones y fuego
Config.AntiPedAttack = false  -- Anti ped con armas
Config.AntiBlackweapons = true
Config.AntiCarBlack    = false -- Detecta, banea o elimina si sacan el coche
Config.AntiObjetsBlack = false -- Detecta, banea o elimina si sacan el objeto
Config.MiniMap         = false --Activa el MiniMapa
Config.AntiMenyoo      = false

-- Detecta si un jugador puso una tecla prohibida
Config.AntiKey       = true
Config.AntiKeyInsert = false
Config.AntiKeyALTF8  = true
Config.AntiKeyShiftG = false
Config.AntiKeyct5rlf8 = true

-- Peds prohibidos
Config.PEDBLACK = {
    [`CSB_BallasOG`] = true,
	[`MP_S_ARMOURED_01`] = true,
	[`S_F_Y_Cop_01`] = true,
	[`S_F_Y_Cop_02`] = true,
	[`S_F_Y_Cop_03`] = true,
	[`S_M_Y_Cop_01`] = true,
	[`S_M_Y_Cop_02`] = true,
	[`S_M_Y_Cop_03`] = true,
	[`A_C_MtLion`] = true,
	[`S_F_Y_Sheriff_01`] = true,
	[`S_F_Y_Sheriff_02`] = true,
	[`S_F_Y_Sheriff_03`] = true,
	[`S_M_Y_Marine_01`] = true,
	[`S_M_Y_Marine_02`] = true,
	[`S_M_Y_Marine_03`] = true,
	[`S_M_SECURITY_01`] = true,
	[`S_M_SECURITY_02`] = true,
	[`s_m_y_swat_01`] = true,
	[`a_m_y_mexthug_01`] = true,
	[`u_m_y_zombie_01`] = true,
	[`S_M_SECURITY_03`] = true,
	[`s_m_y_swat_01`] = true,
	[`S_M_Y_ARMYMECH_01`] = true,
	[`S_M_Y_ARMYMECH_02`] = true,
	[`S_M_Y_ARMYMECH_03`] = true,
	[`S_M_Y_BLACKOPS_01`] = true,
	[`S_M_Y_BLACKOPS_02`] = true,
	[`S_M_Y_BLACKOPS_03`] = true
}
-- Armas prohibidos
Config.WeaponBL={
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_RPG",
	"WEAPON_STINGER",
	"WEAPON_FIREWORK",
	"WEAPON_GARBAGEBAG",
	"WEAPON_RAILGUN",
	"WEAPON_RAILPISTOL",
	"WEAPON_RAILGUN",
	"WEAPON_RAYPISTOL", 
	"WEAPON_RAYCARBINE", 
	"WEAPON_RAYMINIGUN",
	"WEAPON_DIGISCANNER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_FIREWORK",
	"WEAPON_HOMINGLAUNCHER", 
}