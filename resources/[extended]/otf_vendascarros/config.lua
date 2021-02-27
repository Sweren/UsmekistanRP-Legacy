Config = {}

Config.allow_test_drive = false -- allow test driving
Config.test_drive_time = 45 -- test drive time in seconds
Config.currency = "$" -- currency to show in menu above car
Config.buy_point = { pos = vector3(216.18374633789,-167.62182617188,56.271781921387), heading = 253.0 } -- location where to tp player with car after buying it
Config.test_point = { pos = vector3(-1184.8328857422,-1749.1795654297,3.66379737854), heading = 213.91 } -- location where to tp player when test driving car
Config.render_center = vector3(211.95127868652,-186.54490661621,54.605495452881)
Config.render_distance = 25 -- distance from render_center from which the cars will be visible
Config.cars = {
    {
        model = "landstalker2", --MOTOS 5
        label = "Landstalker XL",
        pos = vector3(221.72119140625,-192.42056274414,54.444911956787),
        heading = 205.77,
        price = 227000
    },
    {
        model = "caracara2", --MOTOS 5
        label = "Caracara 4x4",
        pos = vector3(215.02665710449,-190.2587890625,53.849800109863),
        heading = 213.61,
        price = 250000
    },
    {
        model = "imorgon", --MOTOS 5
        label = "Imorgon",
        pos = vector3(202.5354309082,-185.09014892578,54.400581359863),
        heading = 207.77,
        price = 455000
    },
}