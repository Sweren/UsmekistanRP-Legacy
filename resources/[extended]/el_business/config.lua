Config,Locale = {},{} -- no touchey, thanks

Config.locale = "es"

Config.draw_distance = 10.0

Config.default_tax_rate = 0.21 -- default tax rate if per-business one is not set (default 3%, max = 1.0(100%))

Config.max_business = 2

Config.employee_payout_formula = function(earnings,employee_count) -- earnings = after tax | this is the amount that each employee will get, the remainder will go to the owner
    return (earnings*0.4)/employee_count -- employees get 40% split up (owner is guaranteed 60%)
end

-- List of possible variables
-- {name} - name of the business
-- {address} - address of the business
-- {description} - desctiption of the business
-- {blipname} - custom blip name (default Config.blip.name)
-- {owner} - owner steamid (default nil)
-- {owner_rp_name} - owner RP name (default 'None')
-- {earnings} - business earnings/hr
-- {price} - business price
-- {stock} - business stock count
-- {stock_price} - business stock price
-- {taxrate} - business tax rate (in %, default = 3)
-- {id} - business ID
Config.display = {
    {offset = 0.23, text = "~y~ {name}", scale = 1.5},
    {offset = 0.0, text = "{address}; {description}", scale = 0.7},
    {offset = -0.1, text = "~b~Propietario: ~r~{owner_rp_name} ~b~Precio: ~g~${price} ~s~(~r~{taxrate}% impuesto~s~)", scale = 1},
    {offset = -0.21, text = "~b~Ganancias: ~g~${earnings}/hr", scale = 1}
}

Config.blip = {
    enabled = true,
    color = 5, -- https://wiki.gtanet.work/index.php?title=Blips
    sprite = 475, -- https://wiki.gtanet.work/index.php?title=Blips
    scale = 0.5,
    name = "Empresa"
}

Config.sell_percentage = 0.8 -- % from original price the player gets after selling business (1 = 100%, 0.5 = 50%)