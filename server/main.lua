local QBCore = exports[Config.CoreFolderName]:GetCoreObject()

local lastrob = 0

RegisterNetEvent('en-mheist:timerstart', function()
    lastrob = os.time()
end)
RegisterServerEvent('en-mheist:rewarditem', function(item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item, math.random(1,2))
end)

QBCore.Functions.CreateCallback('en-mheist:check:time', function(source, cb)
    local player = QBCore.Functions.GetPlayer(source)
    
    if (os.time() - lastrob) < Config.RobInterval and lastrob ~= 0 then
        local seconds = Config.RobInterval - (os.time() - lastrob)
        TriggerClientEvent(Config.QBNotifyEvent, source, Config.Language['wait']..math.floor(seconds / 60).. Config.Language['minute'], 'error', 3000)
        cb(false)
    else
        DiscordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.license .. ' - ' ..player.PlayerData.citizenid, ' Triggered the Michael House Robbery!')
        cb(true)
    end
end)

QBCore.Functions.CreateCallback('en-mheist:check:cops', function(source, cb)
    local Players = QBCore.Functions.GetPlayers()
    local policeCount = 0

    for i = 1, #Players do
        local Player = QBCore.Functions.GetPlayer(Players[i])
        if Player.PlayerData.job.name == 'police' then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= Config.RequiredCops then
        cb(true)
    else
        cb(false)
        TriggerClientEvent(Config.QBNotifyEvent, source, Config.Language['notenoughpolice'], 'error', 3000)
    end
end)

function DiscordLog(name, message)
    local data = {
        {
            ["color"] = '3553600',
            ["title"] = "**".. name .."**",
            ["description"] = message,
        }
    }
    PerformHttpRequest(Config.Discord['webhook'], function() end, 'POST', json.encode({username = Config.Discord['name'], embeds = data, avatar_url = Config.Discord['image']}), { ['Content-Type'] = 'application/json' })
end