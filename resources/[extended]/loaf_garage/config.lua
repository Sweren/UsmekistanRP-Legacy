Strings = {
    ['enter_garage'] = '%s Explorar garaje',
    ['store_garage'] = '%s Almacenar vehículo',
    ['not_your'] = 'Garaje - este no es tu vehículo',
    ['no_vehicle'] = 'Garaje - no tienes vehículos',
    ['impound'] = 'Depósito',
    ['embargo'] = 'Embargo',
    ['casa'] = 'Casa',
    ['yes'] = 'Si',
    ['no'] = 'No',
    ['retrieve_impounded'] = '<a style="color:cyan">%s <a style="color:white">| %s <a style="color:white">| <a style="color:violet">$%s</a>',
    ['open_impound'] = '%s Explorar depósito',
    ['no_money'] = "¡No tienes suficiente dinero!",
    ['impound_blip'] = 'Depósito',
    ['garage'] = 'Garaje',
    ['fetching'] = 'Buscando vehículos...',
    ['vehicle_info'] = '~h~~s~Garaje ~b~~h~%s ~h~~s~\n~h~Placa:~h~ %s\n~h~Modelo:~h~ %s\n%s %s Explorar vehículos\n%s Retirar vehículo\n%s Salir',
    ['already_out'] = 'El vehículo ya está fuera',

}

Config = {
    ['IndependentGarage'] = false, -- if you store vehicle at garage A, you can't take it out at garage B if this is set to true.
    ['ShowJobVehicles'] = false, -- show vehicles with a job for example police?
    ['Damages'] = true, -- load damages?
    ['ResetState'] = false, -- reset state (impounded) when starting the server?

    ['ImpoundPrice'] = 6000, -- cost to retrieve an impounded vehicle

    ['Interior'] = {
        ['Enabled'] = false, -- view the vehicle in the interior, or at the garage location?
        ['Coords'] = vector3(228.8, -986.97, -99.96),
        ['Heading'] = 180.0
    },

    ['Garages'] = {
        ['Central'] = {
          ['coords'] = vector3(232.2, -792.48, 29.61), 
          ['heading'] = 157.84
        },
        ['Aeropuerto'] = {
            ['coords'] = vector3(-742.92, -2473.92, 13.45), 
            ['heading'] = 332.11
        },
        ['Motel'] = {
            ['coords'] = vector3(288.39, -339.62, 43.94), 
            ['heading'] = 163.22
        },
        ['Sandy'] = {
            ['coords'] = vector3(1419.45, 3619.47, 33.92), 
            ['heading'] = 196.74
        },
        ['Paleto'] = {
            ['coords'] = vector3(127.48, 6608.51, 30.87), 
            ['heading'] = 227.08
        },
        ['Autopista'] = {
            ['coords'] = vector3(-2358.76, 4086.07, 31.57), 
            ['heading'] = 151.71
        },
        ['Mecanico'] = {
            ['coords'] = vector3(-162.56,-1301.73,30.50), 
            ['heading'] = 89.44
        },
        ['LSIA'] = {
            ['coords'] = vector3(-1039.2192382812,-2668.0288085938,13.400122642517), 
            ['heading'] = 241.61
        }
    },

    ['Impounds'] = {
        {
            ['Menu'] = vector3(483.73, -1312.26, 28.23), -- vector3(x, y, z)
            ['SpawnVehicle'] = vector4(490.99, -1313.66, 28.83, 285.99) -- vector4(x, y, z, heading)
        },
        {
            ['Menu'] = vector3(-157.24,-1307.52,30.24), -- vector3(x, y, z)
            ['SpawnVehicle'] = vector4(-182.10,-1315.48,30.48,357.35) -- vector4(x, y, z, heading)
        },
    },
}

Config['3DText'] = {
    ['Enabled'] = true,

    ['Draw'] = function(coords, text)
        local StringRemove = {
            '~r~',
            '~w~',
            '~y~',
            '~b~',
            '~g~'
        }

        SetDrawOrigin(coords)

        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextEntry('STRING')
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(0.0, 0.0)
        for k, v in pairs(StringRemove) do
            text = text:gsub(v, '')
        end
        DrawRect(0.0, 0.0 + 0.0125, 0.015 + string.len(text) / 370, 0.03, 45, 45, 45, 150)

        ClearDrawOrigin()
    end
}