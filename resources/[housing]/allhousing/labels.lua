local labels = {
  ['en'] = {
    ['Entry']       = "Entrar",
    ['Exit']        = "Salir",
    ['Garage']      = "Garaje",
    ['Wardrobe']    = "Armario",
    ['Inventory']   = "Inventario",
    ['InventoryLocation']   = "Inventario",

    ['LeavingHouse']      = "Dejar casa",

    ['AccessHouseMenu']   = "Acceder a menú de casa",

    ['InteractDrawText']  = "["..Config.TextColors[Config.MarkerSelection].."E~s~] ",
    ['InteractHelpText']  = "~INPUT_PICKUP~ ",

    ['AcceptDrawText']    = "["..Config.TextColors[Config.MarkerSelection].."G~s~] ",
    ['AcceptHelpText']    = "~INPUT_DETONATE~ ",

    ['FurniDrawText']     = "["..Config.TextColors[Config.MarkerSelection].."F~s~] ",
    ['CancelDrawText']    = "["..Config.TextColors[Config.MarkerSelection].."F~s~] ",

    ['VehicleStored']     = "Vehículo almacenado",
    ['CantStoreVehicle']  = "No puedes almacenar este vehículo",

    ['HouseNotOwned']     = "Esta no es tu casa",
    ['InvitedInside']     = "Aceptar invitación a casa",
    ['MovedTooFar']       = "Te has movido lejos de la puerta",
    ['KnockAtDoor']       = "Alguien está tocando la puerta",

    ['TrackMessage']      = "Seguimiento",

    ['Unlocked']          = "Casa desbloqueada",
    ['Locked']            = "Casa bloqueada",

    ['WardrobeSet']       = "Armario colocado",
    ['InventorySet']      = "Inventario colocado",

    ['ToggleFurni']       = "Activar/Desactivar menú de muebles",

    ['GivingKeys']        = "Dando llaves al jugador",
    ['TakingKeys']        = "Tomando llaves del jugador",

    ['GarageSet']         = "Garaje colocado",
    ['GarageTooFar']      = "El garaje está muy lejos",

    ['PurchasedHouse']    = "Compraste la casa por T$%d",
    ['CantAffordHouse']   = "No puedes permitirte esta casa",

    ['MortgagedHouse']    = "You mortgaged the house for $%d",

    ['NoLockpick']        = "You don't have a lockpick",
    ['LockpickFailed']    = "You failed to crack the lock",
    ['LockpickSuccess']   = "You successfully cracked the lock",

    ['NotifyRobbery']     = "Someone is attempting to rob a house at %s",

    ['ProgressLockpicking'] = "Lockpicking Door",

    ['InvalidShell']        = "Invalid house shell: %s, please report to your server owner.",
    ['ShellNotLoaded']      = "Shell would not load: %s, please report to your server owner.",
    ['BrokenOffset']        = "Offset is messed up for house with ID %s, please report to your server owner.",

    ['UpgradeHouse']        = "Actualizar casa a: %s",
    ['CantAffordUpgrade']   = "No puedes permitirte este cambio",

    ['SetSalePrice']        = "Set sale price",
    ['InvalidAmount']       = "Invalid amount entered",
    ['InvalidSale']         = "You can't sell a house that you still owe money on",
    ['InvalidMoney']        = "You don't have enough money",

    ['EvictingTenants']     = "Evicting tenants",

    ['NoOutfits']           = "No tienes conjuntos guardados",

    ['EnterHouse']          = "Entrar",
    ['KnockHouse']          = "Tocar Puerta",
    ['RaidHouse']           = "Raid House",
    ['BreakIn']             = "Break In",
    ['InviteInside']        = "Invitar",
    ['HouseKeys']           = "Llaves",
    ['UpgradeHouse2']       = "Actualizar Casa",
    ['UpgradeShell']        = "Actualizar Interior",
    ['SellHouse']           = "Sell House",
    ['FurniUI']             = "Interfaz de Muebles",
    ['SetWardrobe']         = "Colocar Armario",
    ['SetInventory']        = "Colocar Inventario",
    ['SetGarage']           = "Colocar Garaje",
    ['LockDoor']            = "Bloquear Casa",
    ['UnlockDoor']          = "Desbloquear Casa",
    ['LeaveHouse']          = "Dejar Casa",
    ['Mortgage']            = "Mortgage",
    ['Buy']                 = "Comprar",
    ['View']                = "Ver",
    ['Upgrades']            = "Actualizaciones",
    ['MoveGarage']          = "Mover Garaje",

    ['GiveKeys']            = "Dar Llaves",
    ['TakeKeys']            = "Quitar Llaves",

    ['MyHouse']             = "Mi Casa",
    ['PlayerHouse']         = "Casa Ocupada",
    ['EmptyHouse']          = "Casa Libre",

    ['NoUpgrades']          = "No hay actualizaciones disponibles",
    ['NoVehicles']          = "No hay vehículos",
    ['NothingToDisplay']    = "Nada para mostrar",

    ['ConfirmSale']         = "Yes, sell my house",
    ['CancelSale']          = "No, don't sell my house",
    ['SellingHouse']        = "Sell House ($%d)",

    ['MoneyOwed']           = "Money Owed: $%s",
    ['LastRepayment']       = "Last Repayment: %s",
    ['PayMortgage']         = "Pay Mortgage",
    ['MortgageInfo']        = "Mortgage Info",

    ['SetEntry']            = "Set Entry",
    ['CancelGarage']        = "Cancel Garage",
    ['UseInterior']         = "Use Interior",
    ['UseShell']            = "Use Shell",
    ['InteriorType']        = "Set Interior Type",
    ['SetInterior']         = "Select Current Interior",
    ['SelectDefaultShell']  = "Select default house shell",
    ['ToggleShells']        = "Toggle shells available for this property",
    ['AvailableShells']     = "Available Shells",
    ['Enabled']             = "~g~ENABLED~s~",
    ['Disabled']            = "~r~DISABLED~s~",
    ['NewDoor']             = "Add New Door",
    ['Done']                = "Done",
    ['Doors']               = "Doors",
    ['Interior']            = "Interior",

    ['CreationComplete']    = "House creation complete.",

    ['HousePurchased'] = "Your house was purchased for $%d",
    ['HouseEarning']   = ", you earnt $%d from the sale."
  }
}

Labels = labels[Config.Locale]

