resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'



client_scripts {
    "rage-ui/menu/RageUI.lua",
    "rage-ui/menu/Menu.lua",
    "rage-ui/menu/MenuController.lua",

    "components/Rectangle.lua",
    "components/Sprite.lua",
    "components/Text.lua",
    "components/Visual.lua", --- Need rework
    "components/Audio.lua",
    "components/Scaleform.lua",
    "components/Screen.lua",

    "rage-ui/menu/elements/ItemsBadge.lua",
    "rage-ui/menu/elements/ItemsColour.lua",
    "rage-ui/menu/elements/PanelColour.lua",
    "rage-ui/menu/items/UIButton.lua",
    "rage-ui/menu/items/UICheckBox.lua",
    "rage-ui/menu/items/UIList.lua",
    "rage-ui/menu/items/UIProgress.lua",
    "rage-ui/menu/items/UISlider.lua",
    "rage-ui/menu/items/UISliderHeritage.lua",

    "rage-ui/menu/panels/UIColourPanel.lua",
    "rage-ui/menu/panels/UIGridPanel.lua",
    "rage-ui/menu/panels/UIGridPanelHorizontal.lua",
    "rage-ui/menu/panels/UIGridPanelVertical.lua",
    "rage-ui/menu/panels/UIPercentagePanel.lua",
    "rage-ui/menu/panels/UIWeaponPanel.lua",
    "rage-ui/menu/windows/UIHeritage.lua",

    "rage-ui/timerbar/TimerBar.lua",
    "rage-ui/timerbar/items/UIBasic.lua",
    "rage-ui/timerbar/items/UIBarIcon.lua",

}


server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'srv_request.lua',
}

client_scripts {
	'cl_zone.lua',
	'cl_menu.lua',
	'blips.lua',
}
