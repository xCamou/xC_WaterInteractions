ESX = exports['es_extended']:getSharedObject()

function GetPed() return PlayerPedId() end
function LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(10)
    end
end
RegisterNetEvent('Camou_WaterInteractions:checkwater')
AddEventHandler('Camou_WaterInteractions:checkwater', function(itemName, progressTime, progressMsg, finishMsg)
    local ped = GetPed()
    if IsEntityInWater(ped) then
        LoadAnimDict(Config.Animation.animDict)
        TaskPlayAnim(ped, Config.Animation.animDict, Config.Animation.anim, 8.0, 8.0, -1, 33, 0, 0, 0, 0)
        exportsProgressBars(progressMsg, progressTime)
        Citizen.Wait(progressTime)
        ClearPedTasks(ped)
        TriggerServerEvent('Camou_WaterInteractions:complete', itemName)
        TriggerEvent("SService:Client:MakeInfoNotify", "success", "", finishMsg, 5000)
        -- [[YOUR NOTIFICATION]]
    else
        TriggerEvent("SService:Client:MakeInfoNotify", "error", "", "Du bist nicht nah genug am Wasser.", 5000)
        -- [[YOUR NOTIFICATION]]
    end
end)



