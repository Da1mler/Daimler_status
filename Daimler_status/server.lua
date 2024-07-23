ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('Daimler_status:getPlayerInfo')
AddEventHandler('Daimler_status:getPlayerInfo', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerInfo = {
        id = xPlayer.source,
        name = xPlayer.getName(),
        discord = GetPlayerIdentifiers(source)[3],
        steamName = GetPlayerName(source),
        group = xPlayer.getGroup(),
        job = xPlayer.getJob().name,
        jobGrade = xPlayer.getJob().grade_label,
        money = xPlayer.getMoney(),
        bank = xPlayer.getAccount('bank').money
    }
    TriggerClientEvent('Daimler_status:showPlayerInfo', source, playerInfo)
end)
