fx_version 'bodacious'

game 'gta5'

description 'risky_selltonpc'

server_scripts {
    
    '@async/async.lua',
    '@mysql-async/lib/MySQL.lua',
    
    'server/server.lua',
    'config.lua'
}

client_scripts {
    
    'client/client.lua',
    'config.lua'
}
