fx_version 'cerulean'
game 'gta5'

client_script 'client/main.lua'

-- Server Scripts
server_script 'server/main.lua'

-- NUI Default Page
ui_page 'client/html/index.html'

-- Files needed for NUI
-- DON'T FORGET TO ADD THE SOUND FILES TO THIS!
files {
    'client/html/index.html',
    'client/html/sounds/*.ogg',
}