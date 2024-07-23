local function getPlayerInfo()
    TriggerServerEvent('Daimler_status:getPlayerInfo')
end

RegisterCommand('id', function()
    getPlayerInfo()
end, false)

RegisterNetEvent('Daimler_status:showPlayerInfo')
AddEventHandler('Daimler_status:showPlayerInfo', function(playerInfo)
    local content = string.format("**ID:** %d  \n**In-Game Name:** %s  \n**Discord:** %s  \n**Steam Name:** %s  \n**Group:** %s  \n**Job:** %s  \n**Job Grade:** %s  \n**Wallet:** $%d  \n**Bank:** $%d", 
        playerInfo.id, 
        playerInfo.name, 
        playerInfo.discord, 
        playerInfo.steamName, 
        playerInfo.group,
        playerInfo.job,
        playerInfo.jobGrade,
        playerInfo.money,
        playerInfo.bank
    )

    local alert = lib.alertDialog({
        header = 'Player Information',
        content = content,
        centered = true,
        cancel = true,
        size = 'md',
        labels = {
            cancel = 'Close',
            confirm = 'Confirm'
        }
    })

    if alert == 'confirm' then
        print("Information confirmed")
    else
        print("Information closed")
    end
end)

-- exports['okokNotify']:Alert('Info', 'To view your details, type /id', 8000, 'info') 🚧!!TODO!!🚧

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        local message = "^0[Daimler_status^0]: ^2Resource started successfully^0"
        print(message)
    end
end)
