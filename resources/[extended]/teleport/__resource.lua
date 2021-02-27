resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'really simple ass teleport script'

client_script {
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'config.lua',
	'server.lua',
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
}





































version 'qalle'