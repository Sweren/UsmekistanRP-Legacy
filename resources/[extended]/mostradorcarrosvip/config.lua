Config = {}

Config.allow_test_drive = true -- allow test driving
Config.test_drive_time = 90 -- test drive time in seconds
Config.currency = "$" -- currency to show in menu above car
Config.buy_point = { pos = vector3(-1137.7559814453,-1693.5101318359,4.0247645378113), heading = 261.47 } -- location where to tp player with car after buying it
Config.test_point = { pos = vector3(-1240.1843261719,-355.48913574219,37.038139343262), heading = 298.26 } -- location where to tp player when test driving car
Config.render_center = vector3(-1254.1754150391,-359.22784423828,36.907459259033)
Config.render_distance = 40 -- distance from render_center from which the cars will be visible
Config.cars = {
    {
        model = "ram2500",
        label = "Dodge RAM 2500",
        pos = vector3(-1268.5803222656,-364.64804077148,36.831691741943),
        heading = 297.18,
        price = 300000
    },
    {
        model = "rmodx6",
        label = "BMW X6",
        pos = vector3(-1269.9044189453,-358.72467041016,36.823318481445),
        heading = 250.17,
        price = 300000
    },
    {
        model = "g63amg6x6",
        label = "Mercedes-AMG G63",
        pos = vector3(-1265.0632324219,-355.09698486328,36.546276092529),
        heading = 206.82,
        price = 300000
    },
    {
        model = "frr",
        label = "Ford Ranger Raptor",
        pos = vector3(-804.81713867188,-215.97193908691,37.143966674805),
        heading = 211.36,
        price = 300000
    },
    {
        model = "teslax",
        label = "Tesla Model X",
        pos = vector3(-1250.3781738281,-362.70150756836,36.464107513428),
        heading = 29.18,
        price = 300000
    },
    {
        model = "pts21",
        label = "Porsche 911 Turbo S",
        pos = vector3(-1251.4445800781,-354.14828491211,36.381011962891),
        heading = 117.13,
        price = 300000
    },
}