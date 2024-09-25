Config = {}

Config.Items = {
    {UsableItem = 'stone', AddItem = 'washed_stone', ProgressTime = 10000, ProgressNotification = 'Stein wird gewaschen', Notification = 'Der Stein wurde gewaschen.'},
    {UsableItem = 'empty_bottle', AddItem = 'water', ProgressTime = 10000, ProgressNotification = 'Flasche wird befüllt', Notification = 'Du hast die Flasche mit Wasser befüllt.'}
}

Config.UseProgressbar = true
function exportsProgressBars(msg, time)
    if Config.UseProgressbar then
        TriggerEvent("SService:Client:MakeProgressbar", msg, time)
        -- [[YOUR PROGRESSBAR]]
    end
end

Config.Animation = {
    animDict = 'anim@heists@narcotics@funding@gang_idle',
    anim = 'gang_chatting_idle01',
}
