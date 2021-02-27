resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_01_CLASS_ROCK" { url = "https://18533.live.streamtheworld.com/LA_KALLE.mp3", volume = 0.3, name = "La Kalle" }
supersede_radio "RADIO_02_POP" { url = "http://51.161.116.6:8000/los40.ogg", volume = 0.3, name = "Los 40 Principales" }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "http://51.161.116.6:8000/rcn.ogg", volume = 0.3, name = "RCN Radio" }
supersede_radio "RADIO_04_PUNK" { url = "https://21933.live.streamtheworld.com/LA_MEGA_BOGAAC.aac", volume = 0.3, name = "La Mega" }
supersede_radio "RADIO_05_TALK_01" { url = "https://21933.live.streamtheworld.com/LA_FM_BOGAAC.aac", volume = 0.3, name = "La FM" }
supersede_radio "RADIO_06_COUNTRY" { url = "https://18553.live.streamtheworld.com/RADIO_ACTIVAAAC.aac", volume = 0.3, name = "Radio Activa" }
supersede_radio "RADIO_07_DANCE_01" { url = "http://65.60.35.74:8070/;stream.mp3", volume = 0.3, name = "La X" }
supersede_radio "RADIO_08_MEXICAN" { url = "https://20323.live.streamtheworld.com/VIBRAAAC.aac", volume = 0.3, name = "Vibra" }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "https://21933.live.streamtheworld.com/EL_SOL_BOGAAC.aac", volume = 0.3, name = "El Sol" }
supersede_radio "RADIO_12_REGGAE" { url = "https://15903.live.streamtheworld.com/OXIGENOAAC.aac", volume = 0.3, name = "Oxigeno" }
supersede_radio "RADIO_13_JAZZ" { url = "https://21933.live.streamtheworld.com/RADIO_1_BOGAAC.aac", volume = 0.3, name = "Radio 1" }
supersede_radio "RADIO_14_DANCE_02" { url = "https://14223.live.streamtheworld.com/BLURADIO.mp3", volume = 0.3, name = "Blu Radio" }
supersede_radio "RADIO_15_MOTOWN" { url = "https://19253.live.streamtheworld.com/TROPICANAAAC.aac", volume = 0.3, name = "Tropicana" }
supersede_radio "RADIO_16_SILVERLAKE" { url = "https://20323.live.streamtheworld.com/CANDELAESTEREOAAC.aac", volume = 0.3, name = "Candela Estereo" }
supersede_radio "RADIO_17_FUNK" { url = "https://18243.live.streamtheworld.com/BESAME_NACIONALAAC.aac", volume = 0.3, name = "Besame" }
supersede_radio "RADIO_18_90S_ROCK" { url = "http://radiolatina.info:8772/;", volume = 0.3, name = "Radio Latina" }
supersede_radio "RADIO_20_THELAB" { url = "https://live3.rcnmundo.com/rumba.aac", volume = 0.3, name = "Rumba" }
supersede_radio "RADIO_11_TALK_02" { url = "http://stream.radioreklama.bg/nrj.ogg", volume = 0.3, name = "Ponal" }
supersede_radio "RADIO_21_DLC_XM17" { url = "https://14003.live.streamtheworld.com/WRADIO.mp3", volume = 0.3, name = "W Radio" }
supersede_radio "RADIO_22_DLC_BATTLE_MIX1_RADIO" { url = "http://65.60.35.74:8072/;stream.mp3", volume = 0.3, name = "La Z Urbana" }
supersede_radio "RADIO_34_DLC_HEI4_KULT" { url = "http://node-28.zeno.fm/xzpx959x1f8uv?rj-ttl=5&rj-tok=AAABdt8JWJgAqce0GmvK7a1aYQ", volume = 0.5, name = "RCN Radio Usmekistan" } 





files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
