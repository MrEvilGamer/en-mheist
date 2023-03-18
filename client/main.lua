local QBCore = exports[Config.CoreFolderName]:GetCoreObject()
local started = false
RegisterNetEvent('en-mheist:hackbox', function ()
    for _,v in pairs(Config.RequiredItems)do
        local hasitem = QBCore.Functions.HasItem(v)
        if hasitem then
            QBCore.Functions.TriggerCallback('en-mheist:check:time', function(time)
                if time then
                    QBCore.Functions.TriggerCallback('en-mheist:check:cops', function(cops)
                        if cops then
                            TriggerEvent('ultra-voltlab', 10, function(result, reason)
                                if result == 0 then
                                    Notify(Config.Language['hackfailed'], 'error', 3000)
                                elseif result == 1 then
                                    Notify(Config.Language['hacksuccess'], 'success', 3000)
                                    exports[Config.TargetFolder]:RemoveZone("melectricalbox")
                                    started = true
                                    StartHeist()
                                elseif result == 2 then
                                    Notify(Config.Language['hackfailed'], 'error', 3000)
                                elseif result == -1 then
                                    Notify(Config.Language['hackfailed'], 'error', 3000)
                                end
                            end)
                        end
                    end)
                end
            end)
        else
            Notify(Config.Language['requireditems'])
        end
    end
end)

CreateThread(function ()
    while started do
        Wait(600000)
        ResetHeist()
        break
    end
end)

CreateThread(function ()
    LoadModel('xm_prop_x17_powerbox_01')
    local electricbox = CreateObject(GetHashKey("xm_prop_x17_powerbox_01"), vector3(-818.63, 180, 72.22), true,  true, true)
    CreateObject(electricbox)
    SetEntityHeading(electricbox, 193.85)
    FreezeEntityPosition(electricbox, true)
end)

RegisterNetEvent('en-mheist:check:1', function ()
    QBCore.Functions.Progressbar('lootmheist1', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistself1")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:2', function ()
    QBCore.Functions.Progressbar('lootmheist2', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistself2")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:3', function ()
    QBCore.Functions.Progressbar('lootmheist3', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistself3")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:4', function ()
    QBCore.Functions.Progressbar('lootmheist4', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistdrawer1")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:5', function ()
    QBCore.Functions.Progressbar('lootmheist5', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistdrawer2")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:6', function ()
    QBCore.Functions.Progressbar('lootmheist6', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistnancydrawer1")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:7', function ()
    QBCore.Functions.Progressbar('lootmheist7', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistnancydrawer2")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:8', function ()
    QBCore.Functions.Progressbar('lootmheist8', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistnancydrawer3")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:9', function ()
    QBCore.Functions.Progressbar('lootmheist9', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistrandomshelf")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:10', function ()
    QBCore.Functions.Progressbar('lootmheist10', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistmroom")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:11', function ()
    QBCore.Functions.Progressbar('lootmheist11', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistmroomshelf1")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:12', function ()
    QBCore.Functions.Progressbar('lootmheist12', 'Searching...', 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        exports[Config.TargetFolder]:RemoveZone("mheistmroomshelf2")
        TriggerEvent('en-mheist:client:rewarditems')
        ClearPedTasks(PlayerPedId())
    end, function()
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent('en-mheist:check:13', function ()
    exports[Config.TargetFolder]:RemoveZone("mheisthackcomputer")
    
end)

RegisterNetEvent('en-mheist:lockdoor', function ()
    local src = source
    TriggerEvent('qb-doorlock:client:setState', src, Config.DoorId, true, false, true, true)
end)

RegisterNetEvent('en-mheist:client:rewarditems', function ()
    local total_sum = 0
    for _, v in pairs(Config.RewardItems) do
        total_sum = total_sum + v
    end
    RNG = math.random(0, total_sum)
    local sum = 0
    item = 0
    for i, v in pairs(Config.RewardItems) do
        sum = sum + v
        item = i
        if RNG >= sum - v and RNG < sum then
            TriggerServerEvent('en-mheist:rewarditem', item)
            break
        end
    end
    return item
end)