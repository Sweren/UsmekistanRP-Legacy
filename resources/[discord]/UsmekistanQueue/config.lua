Config = {
	Default_Prio = 10000, -- This is the default priority value if a discord isn't found
	AllowedPerTick = 1, -- How many players should we allow to connect at a time?
	HostDisplayQueue = true,
	onlyActiveWhenFull = true,
	Displays = {
		Prefix = 'Cola',
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
	['704061949973102622'] = {8000, "Estás siendo conectado (Puedes donar para aumentar tu prioridad) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717156000808960090'] = {7000, "Estás siendo conectado (VIP Bronce) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717155997981868042'] = {6000, "Estás siendo conectado (VIP Plata) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717155994907443225'] = {5000, "Estás siendo conectado (VIP Oro) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['717156113073832056'] = {4000, "Estás siendo conectado (VIP Diamante) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Discord User 
	['732059557752340501'] = {3000, "Estás siendo conectado (VIP Adamantium) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Donator 
	['732059828632944655'] = {2000, "Estás siendo conectado (VIP Quantum) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Trial Mod 
	['709203494393085952'] = {1000, "Estás siendo conectado (Staff) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Mod 
	['724008852994916393'] = {500, "Estás siendo conectado (Admin) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Admin 
	['715674139763146894'] = {300, "Estás siendo conectado (S-Admin) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Admin 
	['700801536481034371'] = {100, "Estás siendo conectado (The Architects) [{QUEUE_NUM}/{QUEUE_MAX}]:"}, -- Management
}