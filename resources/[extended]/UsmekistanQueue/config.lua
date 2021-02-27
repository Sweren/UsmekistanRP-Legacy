Config = {
	Default_Prio = 500000, -- This is the default priority value if a discord isn't found
	AllowedPerTick = 1, -- How many players should we allow to connect at a time?
	HostDisplayQueue = true,
	onlyActiveWhenFull = false,
	Displays = {
		Prefix = '[Usmekistan Queue]',
		ConnectingLoop = { 
			'🦡🌿🦡🌿🦡🌿',
			'🌿🦡🌿🦡🌿🦡',
			'🦡🌿🦡🌿🦡🥦',
			'🌿🦡🌿🦡🥦🦡',
			'🦡🌿🦡🥦🦡🥦',
			'🌿🦡🥦🦡🥦🦡',
			'🦡🥦🦡🥦🦡🥦',
			'🥦🦡🥦🦡🥦🦡',
			'🦡🥦🦡🥦🦡🌿',
			'🥦🦡🥦🦡🌿🦡',
			'🦡🥦🦡🌿🦡🌿',
			'🥦🦡🌿🦡🌿🦡',
		},
		Messages = {
			MSG_CONNECTING = 'Estás ingresando a la ciudad. [{QUEUE_NUM}/{QUEUE_MAX}]: ', -- Default message if they have no discord roles 
			MSG_CONNECTED = '¡Estás en la cima! Serás conectado ahora :)'
		}
	}
}

Config.Rankings = {
	-- LOWER NUMBER === HIGHER PRIORITY 
	-- ['roleID'] = {rolePriority, connectQueueMessage},
	['1'] = {80, "Estás siendo conectado (Puedes donar para aumentar tu prioridad) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717156000808960090'] = {70, "Estás siendo conectado (Cola de VIP Bronce) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717155997981868042'] = {60, "Estás siendo conectado (Cola de VIP Plata) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717155994907443225'] = {50, "Estás siendo conectado (Cola de VIP Oro) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717156113073832056'] = {40, "Estás siendo conectado (Cola de VIP Diamante) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['732059557752340501'] = {30, "Estás siendo conectado (Cola de VIP Adamantium) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Donator 
	['732059828632944655'] = {20, "Estás siendo conectado (Cola de VIP Quantum) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Trial Mod 
	['709203494393085952'] = {10, "Estás siendo conectado (Cola de Staff) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Mod 
	['724008852994916393'] = {5, "Estás siendo conectado (Cola de Administradores) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Admin 
	['715674139763146894'] = {3, "Estás siendo conectado (Cola de S-Administradores) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Admin 
	['700801536481034371'] = {1, "Estás siendo conectado (Cola de The Architects) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Management
}