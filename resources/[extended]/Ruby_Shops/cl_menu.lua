_sync = false
object = {}


MenuActuel = ""
RegisterNetEvent("Ruby_IllShop:RecieveConfig")
AddEventHandler("Ruby_IllShop:RecieveConfig", function(sync)
	_sync = true
	object = sync
end)

Citizen.CreateThreadNow(function()
	TriggerServerEvent("Ruby_IllShop:GetConfig")
	while not _sync do Wait(100) end

end)


function CreateShop()
	ShopActif = true
	for k,v in pairs(object) do

	    mainMenu = RageUI.CreateMenu(v.TitreMenu, nil)

	    mainMenu:SetSubtitle(v.DescriptionMenu)
		mainMenu.EnableMouse = false;
		mainMenu.Closed = function() ShopActif = false end;

		_prix = 0
		_quantite = 1

		if MenuActuel == v.MenuId then
			RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
			while ShopActif do
				Citizen.Wait(0)
	        	if RageUI.Visible(mainMenu) then
	        	    RageUI.DrawContent({ header = true, glare = true, instructionalButton = false }, function()

					RageUI.Button("Precio: ", nil, {LeftBadge = nil,RightBadge = nil,RightLabel = "~g~".._prix * _quantite.."$"}, true, function(Hovered, Active, Selected)end)

					RageUI.Button("Cantidad: ", nil, {LeftBadge = nil,RightBadge = nil,RightLabel = "~g~".._quantite}, true, function(Hovered, Active, Selected)
						if Selected then
							SelectQuantite()
						end
					end)

					for k,v in pairs(v.items) do
						RageUI.Button(v.nom , nil, {LeftBadge = nil,RightBadge = nil,RightLabel = nil}, true, function(Hovered, Active, Selected)
							if Selected then
								if _quantite >= 1 then
									TriggerServerEvent("Ruby_IllShop:Buy", _prix * _quantite, v.NomItem, _quantite)
								end
	        	    	    end
	        	    	    if Active then
	        	    	        _prix = v.prix
	        	    	    end
						end)
					end
				end, function()	
				end)
			else
				_prix = 0
				_quantite = 1
				break
				end
			end
		end
	end
end


function SelectQuantite()
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP8", "", "", "", "", "", 128 + 1)
	
	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait( 0 )
	end
	
	local result = GetOnscreenKeyboardResult()
	
	if result and result ~= "" then
		_quantite = tonumber(result)
	else
		_quantite = 1
	end
end