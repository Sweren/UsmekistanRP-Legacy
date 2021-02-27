Config = {}

-- To enable discord logs go to line 2 of the server.lua and paste your discord webhook between the quotes.
Config.admin_groups = {"admin","superadmin"} -- groups that can use admin commands
Config.banformat = "¡BANEADO(A)!\nRazón: %s\nExpira: %s\nAdmin: %s (ID de Sanción: #%s)" -- message shown when banned (1st %s = reason, 2nd %s = expire, 3rd %s = banner, 4th %s = ban id)
Config.popassistformat = "El jugador %s está solicitando asistencia\nEscribe <span class='text-success'>/asistaceptar %s</span> para aceptar o <span class='text-danger'>/asistesconder</span> para rechazar" -- popup assist message format
Config.chatassistformat = "El jugador %s está solicitando asistencia\nEscribe ^2/asistaceptar %s^7 para aceptar o ^1/asistesconder^7 para rechazar\n^4Razón^7: %s" -- chat assist message format
Config.assist_keys = {enable=false,accept=208,decline=207} -- keys for accepting/declining assist messages (default = page up, page down) - https://docs.fivem.net/game-references/controls/
Config.warning_screentime = 10.0 -- warning display length (in seconds)
Config.backup_kick_method = false -- set this to true if banned players don't get kicked when banned or they can re-connect after being banned.
Config.kick_without_steam = true -- prevent a player from joining your server without a steam identifier.
Config.page_element_limit = 250
