ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    for i = 1, #Config.Items do
        local item = Config.Items[i]
        ESX.RegisterUsableItem(item.UsableItem, function(source)
            local xPlayer = ESX.GetPlayerFromId(source)
            TriggerClientEvent('Camou_WaterInteractions:checkwater', source, item.UsableItem, item.ProgressTime, item.ProgressNotification, item.Notification)
        end)
    end
end)

RegisterNetEvent('Camou_WaterInteractions:complete')
AddEventHandler('Camou_WaterInteractions:complete', function(itemName)
    local xPlayer = ESX.GetPlayerFromId(source)
    for _, item in pairs(Config.Items) do
        if item.UsableItem == itemName then
            exports.ox_inventory:RemoveItem(source, item.UsableItem, 1)
            exports.ox_inventory:AddItem(source, item.AddItem, 1)
        end
    end
end)

