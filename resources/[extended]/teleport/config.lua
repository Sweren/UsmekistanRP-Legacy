ESX                           = nil

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(1)
    end
end)

Config                            = {}

Config.Teleporters = {

		--[[ ['AmbulanceLS5'] = {
		['Job'] = 'ambulance',
		['Enter'] = {
			['x'] = 275.91,
			['y'] = -1361.35,
			['z'] = 24.34,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A LA SALA',
		},
		['Exit'] = {
			['x'] = 332.34,
			['y'] = -595.61,
			['z'] = 43.08,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A~n~LA VENTANA OPERATIVA'
		}
	},
		['MysticSzpital1'] = {
		['Job'] = 'ambulance',
		['Enter'] = {
			['x'] = 329.93,
			['y'] = -601.03,
			['z'] = 43.28,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR AL APARCAMIENTO',
		},
		['Exit'] = {
			['x'] = 319.69,
			['y'] = -559.62,
			['z'] = 28.74,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A~n~LA SALA'
		}
	},
		['MysticSzpital2'] = {
		['Job'] = 'ambulance',
		['Enter'] = {
			['x'] = 327.51,
			['y'] = -602.73,
			['z'] = 43.28,
			['Information'] = 'PRESIONE [~g~E~s~] PARA LLEGAR AL TECHO',
		},
		['Exit'] = {
			['x'] = 339.27,
			['y'] = -583.99,
			['z'] = 74.16,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A~n~LA SALA'
		}
	},






	['AmbulanceLS56'] = {
		['Job'] = 'offambulance',
		['Enter'] = {
			['x'] = 275.91,
			['y'] = -1361.35,
			['z'] = 24.34,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A LA SALA',
		},
		['Exit'] = {
			['x'] = 332.34,
			['y'] = -595.61,
			['z'] = 43.08,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A~n~LA VENTANA OPERATIVA'
		}
	},
		['MysticSzpital16'] = {
		['Job'] = 'offambulance',
		['Enter'] = {
			['x'] = 329.93,
			['y'] = -601.03,
			['z'] = 43.28,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR AL APARCAMIENTO',
		},
		['Exit'] = {
			['x'] = 319.69,
			['y'] = -559.62,
			['z'] = 28.74,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A~n~LA SALA'
		}
	},
		['MysticSzpital26'] = {
		['Job'] = 'offambulance',
		['Enter'] = {
			['x'] = 327.51,
			['y'] = -602.73,
			['z'] = 43.28,
			['Information'] = 'PRESIONE [~g~E~s~] PARA LLEGAR AL TECHO',
		},
		['Exit'] = {
			['x'] = 339.27,
			['y'] = -583.99,
			['z'] = 74.16,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A~n~LA SALA'
		}
	}, ]]







		['NightClub'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = -850.85,
			['y'] = -252.21,
			['z'] = 38.75,
			['Information'] = 'PRESIONE [~g~E~s~] PARA ENTRAR',
		},
		['Exit'] = {
			['x'] = -1569.36,
			['y'] = -3017.15,
			['z'] = -75.3,
			['Information'] = 'PRESIONE [~g~E~s~] SALIR'
		}
	},
		['Kasyno'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = 907.67,
			['y'] = -942.9,
			['z'] = 43.51,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR',
		},
		['Exit'] = {
			['x'] = 930.24,
			['y'] = 41.51,
			['z'] = 0.01,
			['Information'] = 'PRESIONE [~g~E~s~] ENTRAR'
		}
	},
	--[[	['WeazelNews'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = -599.2, -- -599.2, y = -929.8, z = 23.86
			['y'] = -929.8,
			['z'] = 22.86,
			['Information'] = 'NACIŚNIJ [~g~E~s~] ABY WEJŚĆ~n~DO BIURA ~b~WEAZEL NEWS',
		},
		['Exit'] = {
			['x'] = -140.44,--x = -140.44, y = -620.54, z = 168.82
			['y'] = -620.54,
			['z'] = 167.82,
			['Information'] = 'NACIŚNIJ [~g~E~s~] ABY WYJŚĆ Z BIURA'
		}
	},
		['WeazelNews2'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = -591.21, -- x = -591.21, y = -912.05, z = 23.87
			['y'] = -912.05,
			['z'] = 22.87,
			['Information'] = 'NACIŚNIJ [~g~E~s~] ABY WEJŚĆ~n~DO BIURA ~b~WEAZEL NEWS',
		},
		['Exit'] = {
			['x'] = -142.77,--{x = -142.77, y = -624.77, z = 168.82
			['y'] = -624.77,
			['z'] = 167.82,
			['Information'] = 'NACIŚNIJ [~g~E~s~] ABY WYJŚĆ DO GARAŻU'
		}
	},]]
	
	['Casino'] = {
		['Job'] = 'none',
		['Enter'] = { --x = x = 3512.87, y = 3752.69, z = 30.11 vector3(945.17315673828,47.695281982422,80.291717529297)
			['x'] = 1086.1163330078,
			['y'] = 214.90878295898,
			['z'] = -49.200416564941,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR',
		},
		['Exit'] = {
			['x'] = 964.47229003906,--x = c, y = 3680.71, z = 28.12 vector3(964.47229003906,58.925762176514,112.55303955078)
			['y'] = 58.925762176514,
			['z'] = 112.55303955078,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR'
		}
	},	
		['KasynoBar'] = {
		['Job'] = 'casino',
		['Enter'] = {
			['x'] = 1113.81, 
			['y'] = 208.15,
			['z'] = -50.3,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR',
		},
		['Exit'] = {
			['x'] = 1115.29,
			['y'] = 209.1,
			['z'] = -50.3,
			['Information'] = 'PRESIONE [~g~E~s~] PARA ENTRAR A LA BARRA'
		}
	},
	['KasynoBar2'] = {
		['Job'] = 'manonegra',
		['Enter'] = {
			['x'] = 1113.81, 
			['y'] = 208.15,
			['z'] = -50.3,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR',
		},
		['Exit'] = {
			['x'] = 1115.29,
			['y'] = 209.1,
			['z'] = -50.3,
			['Information'] = 'PRESIONE [~g~E~s~] PARA ENTRAR A LA BARRA'
		}
	},	
		['CajaCasino'] = {
		['Job'] = 'casino',
		['Enter'] = {
			['x'] = 1120.9442138672,
			['y'] = 221.94613647461,
			['z'] = -49.435153961182,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR',
		},
		['Exit'] = {
			['x'] = 1120.7127685547,
			['y'] = 214.9436340332,
			['z'] = -49.440071105957,
			['Information'] = 'PRESIONE [~g~E~s~] PARA ENTRAR A LA SALA SEGURA'
		},
	},
	['CajaCasino2'] = {
		['Job'] = 'manonegra',
		['Enter'] = {
			['x'] = 1120.9442138672,
			['y'] = 221.94613647461,
			['z'] = -49.435153961182,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR',
		},
		['Exit'] = {
			['x'] = 1120.7127685547,
			['y'] = 214.9436340332,
			['z'] = -49.440071105957,
			['Information'] = 'PRESIONE [~g~E~s~] PARA ENTRAR A LA SALA SEGURA'
		},
	},
	['HelipuertoCasino'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = 968.03979492188,
			['y'] = 63.483535766602,
			['z'] = 112.55304718018,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR AL HELIPUERTO',
		},
		['Exit'] = {
			['x'] = 978.20172119141,
			['y'] = 62.06632232666,
			['z'] = 120.24041748047,
			['Information'] = 'PRESIONE [~g~E~s~] PARA IR A LA TERRAZA'
		},
	},
	--[[ ['MazeBankArena'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = -68.58,
			['y'] = -800.30,
			['z'] = 44.22,
			['Information'] = 'PRESIONE [~g~E~s~] PARA INGRESAR',
		},
		['Exit'] = {
			['x'] = -77.75,
			['y'] = -829.62,
			['z'] = 243.38,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR'
		},
	},
	['MazeBankArena2'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = 138.94, 
			['y'] = -762.76,
			['z'] = 45.75,
			['Information'] = 'PRESIONE [~g~E~s~] PARA INGRESAR',
		},
		['Exit'] = {
			['x'] = 136.35, 
			['y'] = -761.56,
			['z'] = 242.15,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR'
		},
	}, ]]
	['LaManadaAscensor'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = -2566.24,  
			['y'] = 271.01,
			['z'] = 190.85,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR',
		},
		['Exit'] = {
			['x'] = -2566.24,  
			['y'] = 271.0,
			['z'] = 195.74,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR'
		},
	},

	['VercettiAscensor'] = {
		['Job'] = 'vercetti',
		['Enter'] = {
			['x'] = -429.27,  
			['y'] = 1110.22,
			['z'] = 327.6,
			['Information'] = 'PRESIONE [~g~E~s~] PARA ENTRAR',
		},
		['Exit'] = {
			['x'] = -461.62,   
			['y'] = 1093.08, 
			['z'] = 301.22,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR'
		},
	},

	['FBIAscensor'] = {
		['Job'] = 'none',
		['Enter'] = {
			['x'] = 136.18,   
			['y'] = -761.86,
			['z'] = 45.75,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR',
		},
		['Exit'] = {
			['x'] = 136.18,   
			['y'] = -761.86,
			['z'] = 242.15,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR'
		},
	},

	['ParkingHospital'] = {
		['Job'] = 'none', 
		['Enter'] = {
			['x'] = -418.40,   
			['y'] = -344.54,
			['z'] = 24.23,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR AL LOBBY',
		},
		['Exit'] = { 
			['x'] = -436.07,   
			['y'] = -359.92,
			['z'] = 34.94,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR AL ESTACIONAMIENTO'
		},
	},

	['CirugiaHospital'] = {
		['Job'] = 'none',  
		['Enter'] = {
			['x'] = -452.42,   
			['y'] = -288.4,
			['z'] = 34.9,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR A CIRUGÍA',
		},
		['Exit'] = { 
			['x'] = -452.52,   -- vector3(-452.52008056641,-288.46862792969,-130.83641052246) vector3(-452.42248535156,-288.41213989258,34.949699401855)
			['y'] = -288.4,
			['z'] = -130.83,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR AL LOBBY'
		},
	},

	['HelipuertoHospital'] = {
		['Job'] = 'ambulance',  
		['Enter'] = {
			['x'] = -487.63,   
			['y'] = -328.40,
			['z'] = 42.3,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR AL HELIPUERTO',
		},
		['Exit'] = { 
			['x'] = 338.79,   
			['y'] = -583.90,
			['z'] = 74.16,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR AL HOSPITAL'
		},
	},

	['HelipuertoHospital2'] = {
		['Job'] = 'offambulance',  
		['Enter'] = {
			['x'] = -487.63,   
			['y'] = -328.40,
			['z'] = 42.3,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR AL HELIPUERTO',
		},
		['Exit'] = { 
			['x'] = 338.79,   
			['y'] = -583.90,
			['z'] = 74.16,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR AL HOSPITAL'
		},
	},

	['LODEPerico'] = {
		['Job'] = 'LODE',  
		['Enter'] = {
			['x'] = 4991.73,  
			['y'] = -5722.00,
			['z'] = 19.88,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SALIR',
		},
		['Exit'] = { 
			['x'] = 4978.48,  
			['y'] = -5707.07,
			['z'] = 19.88,
			['Information'] = 'PRESIONE [~g~E~s~] PARA INGRESAR'
		},
	},

	['LODEPericoAscensor'] = {
		['Job'] = 'LODE',  
		['Enter'] = {
			['x'] = 5012.41,  
			['y'] = -5747.05,
			['z'] = 15.48,
			['Information'] = 'PRESIONE [~g~E~s~] PARA SUBIR',
		},
		['Exit'] = { 
			['x'] = 5012.61,  
			['y'] = -5748.81,
			['z'] = 28.94,
			['Information'] = 'PRESIONE [~g~E~s~] PARA BAJAR',
		},
	},

	['LODEBarco'] = {
		['Job'] = 'LODE',  
		['Enter'] = {  
			['x'] = 4982.16,  
			['y'] = -5174.98,
			['z'] = 2.486,
			['Information'] = 'PRESIONE [~g~E~s~] PARA VIAJAR A LA CIUDAD',
		},
		['Exit'] = { 
			['x'] = 1275.52, 
			['y'] = -3214.77,
			['z'] = 5.90,
			['Information'] = 'PRESIONE [~g~E~s~] PARA VIAJAR A CAYO PERICO',
		},
	},

}

