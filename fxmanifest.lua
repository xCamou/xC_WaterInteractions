fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name "xC_WaterInteractions"
description "Simple Waterinteractions."
author "Camou"
version "1.0.0"

shared_scripts {
	'config.lua'
}

client_scripts {
	'client.lua'
}

server_scripts {
	'server.lua'
}

escrow_ignore {
	'client.lua',
	'server.lua',
    'config.lua',
}