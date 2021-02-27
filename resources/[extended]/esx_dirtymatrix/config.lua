Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0 -- How far to draw the marker ()
Config.ZoneSize     = {x = 2.0, y = 2.0, z = 1.0}
Config.MarkerColor  = {r = 100, g = 100, b = 204}
Config.ZDiff        = 2.0
Config.blipson      = false -- Show the blip on the map? (set to false to disable)
Config.BlipSprite   = 431 -- Blip design: https://wiki.gtanet.work/index.php?title=Blips
Config.rate = 0.95 -- Set rate (0.85 = 25% cost to wash)
Config.percent = '5%' -- For the message that displays how much comission was taken
Config.washmessage = 'Presiona [E] para lavar' -- Message that pops up in the top left
Config.devicename = 'hackingdevice' -- dont change unless you know what your doing
Config.alertpolice = true -- Alert police ? Set to false to disable.
Config.requirementmessage = 'Tu necesitas un dispositivo de hackeo.'
Config.lostdevice = 'Su dispositivo fue comprometido por la policía cibernética' -- message if you lost the device
Config.chancetolose = true -- Is there a chance the hacking device will be lost?
Config.losechase = 10 -- % chance to lose if Config.chancetolose = true

---------- Add more locations and blips -- copy and paste the line
--  e.g
-- Config.matrix = {
--  {['x'] = 1275.7066650391, ['y'] = -1710.4779052734, ['z'] = 54.771453857422},
--  {['x'] = 15.7066650391, ['y'] = -110.4779052734, ['z'] = 4.771453857422},
-- }
--  Config.blip = {
--  {name= "Money Wash",  color=6, scale=0.8, id=500, x = 1275.7066650391, y =-1710.4779052734, z = 54.771453857422},
--  {name= "Vagos Money Wash",  color=6, scale=0.8, id=500, x = 122.7050391, y =-110.4779052734, z = 4.77145422}
-- }

Config.matrix = {
  {['x'] = 1275.7066650391, ['y'] = -1710.4779052734, ['z'] = 54.771453857422},
}
Config.blip = {
  {name= "Money Wash",  color=6, scale=0.8, id=500, x = 1275.7066650391, y =-1710.4779052734, z = 54.771453857422}
}
