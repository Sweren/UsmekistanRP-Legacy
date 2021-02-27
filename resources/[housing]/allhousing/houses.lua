-- NOTE: You can potentially pre-furnish house models using this.
-- If you don't know/cant figure it out, don't ask how.
ShellExtras = {
  HotelV1 = {
    [GetHashKey("v_49_motelmp_winframe")]       = {offset = vector3(1.44,-3.9, 2.419)},
    [GetHashKey("v_49_motelmp_glass")]          = {offset = vector3(1.44,-3.9, 2.419)},
    [GetHashKey("v_49_motelmp_curtains")]       = {offset = vector3(1.44,-3.8, 2.200)},
    [GetHashKey("hei_prop_heist_safedeposit")]  = {offset = vector3(1.0,-4.2, 2.00), rotation = vector3(0.0,0.0,180.0)},
  }
}

ShellPrices = {
  HotelV1       = 10000,
  HighEndV1   = 20000,


  NewApt1       = 1,
  NewApt2       = 1,
  NewApt3       = 1,

  Banham = 1,
  Westons = 1,
  Westons2 = 1,

  HighEndV1     = 1,
  HighEndV2     = 1,
  Michaels      = 1,


  --NOTE: KAMBI PAYED SHELLS

 

--[[   Office1   = 15000, 
  Office2   = 15000,
  OfficeBig = 25000,

  FrankAunt     = 10000,
  Medium2       = 10000,
  Medium3       = 10000,
  
  CokeShell1    = 15000,
  CokeShell2    = 15000,
  MethShell     = 15000,
  WeedShell1    = 15000,
  WeedShell2    = 15000,

  GarageShell1  = 15000,
  GarageShell2  = 15000,
  GarageShell3  = 15000,

  NewApt1       = 15000,
  NewApt2       = 15000,
  NewApt3       = 15000,
  
  Warehouse1 = 15000, 
  Warehouse2 = 15000,
  Warehouse3 = 15000, 

  Office1   = 15000, 
  Office2   = 15000,
  OfficeBig = 25000,

  Store1    = 25000,
  Store2    = 25000,
  Store3    = 25000,
  Gunstore  = 25000, 
  Barbers   = 25000,

  Trailer       = 15000,  
  Lester        = 15000,
  HotelV2       = 15000, 
  Trevor        = 20000, 
  ApartmentV2   = 25000, 
  HighEndV1     = 50000, 
  HighEndV2     = 60000, 
  Ranch         = 70000,
  Michaels      = 70000, ]]
 
}

ShellModels = {  
  HotelV1       = "playerhouse_hotel",
  HighEndV1   = "playerhouse_tier1",

  -- NOTE: KAMBI PAYED SHELLS
  --[[

  Office1   = 'shell_office1',  
  Office2   = 'shell_office2',
  OfficeBig = 'shell_officebig',

  FrankAunt     = "shell_frankaunt",
  Medium2       = "shell_medium2",
  Medium3       = "shell_medium3",
  
  CokeShell1    = 'shell_coke1',
  CokeShell2    = 'shell_coke2',
  MethShell     = 'shell_meth',
  WeedShell1    = 'shell_weed',
  WeedShell2    = 'shell_weed2',

  GarageShell1  = 'shell_garages',
  GarageShell2  = 'shell_garagem',
  GarageShell3  = 'shell_garagel',

  ]]
  
  NewApt1       = 'shell_apartment1',
  NewApt2       = 'shell_apartment2',
  NewApt3       = 'shell_apartment3',

  Banham = "shell_banham",
  Westons = "shell_westons",
  Westons2 = "shell_westons2",

  HighEndV1     = "shell_highend",
  HighEndV2     = "shell_highendv2",
  Michaels      = "shell_michael",

  --[[ Warehouse1 = "shell_warehouse1",
  Warehouse2 = "shell_warehouse2",
  Warehouse3 = "shell_warehouse3",  

  Office1   = 'shell_office1',  
  Office2   = 'shell_office2',
  OfficeBig = 'shell_officebig',

  Store1    = 'shell_store1',   
  Store2    = 'shell_store2',   
  Store3    = 'shell_store3',  
  Gunstore  = 'shell_gunstore', 
  Barbers   = 'shell_barber',  
  
  HotelV2       = "shell_v16low",
  Trailer       = "shell_trailer",
  Trevor        = "shell_trevor",
  ApartmentV2   = "shell_v16mid",
  Lester        = "shell_lester",
  Ranch         = "shell_ranch", ]] 


  
}

ShellOffsets = {  
  HotelV1       = {exit = vector4(1.0,3.5,27.6,1.5)},
  HotelV2       = {exit = vector4(-4.7,6.5,28.9,0.4)},
  Trailer       = {exit = vector4(1.3,2.0,27.1,0.4)},
  Trevor        = {exit = vector4(-0.2,3.5,27.5,0.0)},
  HighEndV1   = {exit = vector4(-3.6,15.4,27.7,0.0)},
  ApartmentV2   = {exit = vector4(-1.4,13.9,28.85,0.8)},
  Lester        = {exit = vector4(1.5,5.8,28.1,3.1)},
  Ranch         = {exit = vector4(1.0,5.3,27.4,270.0)},
  HighEndV1     = {exit = vector4(22.1,0.4,22.7,271.0)},
  HighEndV2     = {exit = vector4(10.2,-0.9,23.4,270.0)},
  Michaels      = {exit = vector4(9.3,-5.6,20.0,259.0)},

  Office1       = {exit = vector4(-1.211617, -4.987183, 27.95093, 184.172)},
  Office2       = {exit = vector4(-3.488777, 2.018311, 28.73308, 91.23632)},
  OfficeBig     = {exit = vector4(12.6039, -1.839844, 24.69724, 180.4282)},

  Store1        = {exit = vector4(2.775688, 4.565063, 28.91416, 2.809942)},
  Store2        = {exit = vector4(0.7891312, 5.07373, 28.98058, 0.9400941)},
  Store3        = {exit = vector4(0.1036224, 7.573242, 27.99363, 359.8295)},
  Gunstore      = {exit = vector4(1.148056, 5.151367, 28.96727, 0.454677)},
  Barbers       = {exit = vector4(-1.598465, -5.24231, 28.99999, 181.2334)},

  Warehouse1    = {exit = vector4(8.625145, -0.1049805, 28.96388, 270.1945)},
  Warehouse2    = {exit = vector4(12.29147, -5.414795, 28.96133, 270.8702)},
  Warehouse3    = {exit = vector4(-2.386871, 1.656372, 28.99656, 89.92931)},

  CokeShell1    = {exit = vector4(6.284302, -8.289307, 28.99088, 178.625)},
  CokeShell2    = {exit = vector4(6.284302, -8.289307, 28.99088, 178.625)},
  MethShell     = {exit = vector4(6.284302, -8.289307, 28.99088, 178.625)},
  WeedShell1    = {exit = vector4(-17.51855, -11.66284, 28.98102, 98.85722)},
  WeedShell2    = {exit = vector4(-17.51855, -11.66284, 28.98102, 98.85722)},

  GarageShell1  = {exit = vector4(-6.019897, -3.527344, 28.9867, 181.9444)},
  GarageShell2  = {exit = vector4(-13.56653, -1.5979, 29.00004, 93.81283)},
  GarageShell3  = {exit = vector4(-12.04602, 14.29126, 29.00008, 91.64314)},

  NewApt1       = {exit = vector4(2.223267, -8.481567, 21.30548, 186.0575)},
  NewApt2       = {exit = vector4(2.223267, -8.481567, 21.30548, 186.0575)},
  NewApt3       = {exit = vector4(-11.3893, -4.29541, 21.86993, 127.1683)},

  FrankAunt     = {exit = vector4(0.511617,   5.607183, 28.15093, 355.93)},
  Medium2       = {exit = vector4(-5.688777, -0.358311, 28.73308, 91.23632)},
  Medium3       = {exit = vector4(-5.65039,   1.839844, 23.29724, 86.2782)},

  Banham       = {exit = vector4(1344.7478027344,-548.48712158203,50.144950866699,94.882957458496)}, 
  Westons       = {exit = vector4(1352.6787109375,-536.30114746094,50.845500946045,179.32699584961)},
  Westons2       = {exit = vector4(1346.5401611328,-536.79083251953,50.84546661377,180.62083435059)},
}

Houses = {

  -- Heights (STAFF)
  {
    Entry   = vector4(1301.09, -574.56, 71.73, 160.63),
    Garage  = vector4(1291.09, -583.01, 71.74, 343.00),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
--[[       NewApt1       = true, -- 3 pisos casa variante 
      NewApt2       = true, -- 3 pisos casa variante 2
      NewApt3       = true, -- franklin
    
     Banham = true, --bonita
     Westons = true, --gigante
     Westons2 = true, --gigante pero no tan grande
    
      HighEndV1     = true, -- 2 pisos apto. variante 1
      HighEndV2     = true, -- 1 piso apto.
      Michaels      = true, -- michael ]]
    }
  },
  {
    Entry   = vector4(1323.39, -582.96, 73.24, 0.15),
    Garage  = vector4(1312.97, -588.86, 72.93, 340.00),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
      
      
    }
  },
  {
    Entry   = vector4(1341.37, -597.19, 74.70, 220.30),
    Garage  = vector4(1346.86, -606.70, 74.35, 323.00),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
      
      
    }
  },
  {
    Entry   = vector4(1367.22, -606.48, 74.71, 0.76),
    Garage  = vector4(1360.21, -615.84, 74.33, 360.00),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
      
      
    }
  },
  {
    Entry   = vector4(1386.05, -593.41, 74.48, 75.66),
    Garage  = vector4(1389.99, -605.32, 74.33, 55.21),
    Shell   = "NewApt2",
    Price   = 55000,
    Shells  = {
      
      
    }
  },
  {
    Entry   = vector4(1388.96, -569.61, 74.49, 135.98),
    Garage  = vector4(1400.97, -572.20, 74.33, 115.20),
    Shell   = "NewApt1",
    Price   = 55000,
    Shells  = {
      

    }
  },
  {
    Entry   = vector4(1373.26, -555.84, 74.68, 90.43),
    Garage  = vector4(1365.39, -547.80, 74.33, 155.95),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
      
      
    }
  },
  {
    Entry   = vector4(1348.34, -546.90, 73.89, 170.16),
    Garage  = vector4(1358.33, -541.36, 73.77, 160.61),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
      
    
    }
  },
  {
    Entry   = vector4(1328.50, -536.00, 72.44, 90.21),
    Garage  = vector4(1320.41, -528.33, 72.12, 159.91),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
      
      
    }
  },
  {
    Entry   = vector4(1303.20, -527.46, 71.46, 180.56),
    Garage  = vector4(1312.66, -521.69, 71.31, 162.44),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = {
      
    
    }
  },

  {
    Entry   = vector4(227.81314086914,766.15673828125,204.78074645996,57.616325378418),
    Garage  = vector4(216.24520874023,758.17883300781,204.22895812988,59.486270904541),
    Shell   = "HighEndV1",
    Price   = 55000,
    Shells  = { 
    }
  },


-- DONADORES 
{
  Entry   = vector4(8.3929901123047,540.03948974609,176.0274810791,339.66680908203), --DISTRITO 564
  Garage  = vector4(14.393948554993,548.61981201172,176.19586181641,56.785266876221),
  Shell   = "NewApt3",
  Price   = 450,
  Shells  = {
  }
},

{
  Entry   = vector4(-817.38677978516,177.97848510742,72.227745056152,108.88676452637), --DISTRITO 692
  Garage  = vector4(-820.03515625,184.11219787598,72.123245239258,125.10277557373),
  Shell   = "Michaels",
  Price   = 450,
  Shells  = {
  }
},

{
  Entry   = vector4(-746.93157958984,808.23431396484,215.03030395508,292.00735473633), --DISTRITO 890
  Garage  = vector4(-748.52368164062,818.55718994141,213.38220214844,297.19830322266),
  Shell   = "NewApt2",
  Price   = 600,
  Shells  = {
  }
},

  {
    Entry   = vector4(-1055.9825439453,761.46136474609,167.31677246094,275.98211669922), --DISTRITO 872
    Garage  = vector4(-1053.0428466797,767.97344970703,167.62133789062,271.39147949219),
    Shell   = "Banham",
    Price   = 450,
    Shells  = {
    }
},

{
  Entry   = vector4(-1135.2247314453,376.85284423828,71.299789428711,330.49597167969), --DISTRITO 667
  Garage  = vector4(-1096.8994140625,358.97180175781,68.49764251709,357.69549560547),
  Shell   = "Westons",
  Price   = 650,
  Shells  = {
  }
},

{
  Entry   = vector4(-258.69769287109,632.62213134766,187.80517578125,78.684059143066), --DISTRITO 714
  Garage  = vector4(-241.04273986816,606.14801025391,187.36488342285,77.146469116211),
  Shell   = "NewApt1",
  Price   = 600,
  Shells  = {
  }
},

{
  Entry   = vector4(-776.79479980469,312.37850952148,85.698127746582,147.61817932129), --DISTRITO 716
  Garage  = vector4(-795.69403076172,305.04537963867,85.700393676758,177.90400695801),
  Shell   = "Westons2",
  Price   = 500,
  Shells  = {
  }
},

{
  Entry   = vector4(-636.2685546875,44.21407699585,42.697673797607,88.077987670898), --DISTRITO 517
  Garage  = vector4(-634.19689941406,56.389453887939,43.725452423096,90.953598022461),
  Shell   = "HighEndV2",
  Price   = 400,
  Shells  = {
  }
},

{
  Entry   = vector4(-1452.2768554688,545.341796875,120.79943084717,250.30049133301), --DISTRITO 517
  Garage  = vector4(-1451.4713134766,532.93920898438,119.12394714355,235.67108154297),
  Shell   = "Michaels",
  Price   = 450,
  Shells  = {
  }
},

{
  Entry   = vector4(-1277.6402587891,497.02670288086,97.890403747559,267.58120727539), --DISTRITO 517
  Garage  = vector4(-1270.6405029297,502.41876220703,97.227890014648,178.21655273438),
  Shell   = "Westons2",
  Price   = 500,
  Shells  = {
  }
},




}

if IsDuplicityVersion() then
  Citizen.CreateThread(function()
    Wait(1500)

    local check_coords = {}  
    for _,house in ipairs(Houses) do
      if check_coords[house.Entry] then
        print("Duplicate entry location in houses.lua","Entry: "..tostring(house.Entry))
        return
      else
        check_coords[house.Entry] = true
      end
    end
    if not error_out then
      print("Completed house table check successfully.")
    end
  end)
end

