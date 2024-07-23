fx_version 'cerulean'
game 'gta5'

author 'Daimler Development'
description 'Show player info about player via command /id'
version '1.0'

discord 'discord.gg/daimler' -- or https://discord.gg/8vWKFrVHhd

lua54 'yes'

server_scripts {
    'server.lua'
}

client_scripts {
    '@ox_lib/init.lua', -- Ensure ox_lib is correctly referenced
    'client.lua'
}

dependencies {
    'es_extended',
    'ox_lib',
}
