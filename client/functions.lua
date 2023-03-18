local QBCore = exports[Config.CoreFolderName]:GetCoreObject()

function LoadModel(model)
    if type(model) == 'number' then
        model = model
    else
        model = GetHashKey(model)
    end
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(0)
    end
end

function LoadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(50)
    end
end

function Notify(text, texttype, length)
    QBCore.Functions.Notify(text, texttype, length)
end

function StartHeist()
    TriggerServerEvent('en-mheist:timerstart')
    TriggerEvent('en-mheist:spawnenemy')
    TriggerEvent('en-mheist:create:targets')
    TriggerServerEvent('qb-doorlock:server:updateState', Config.DoorId, false, false, false, true, false, false)
end

function ResetHeist()
    DeleteEntity(Config.MicPedsLoc['SecurityPeds'])
    TriggerEvent('en-mheist:electrical:boxag')
    TriggerServerEvent('en-mheist:lockdoor')
    exports[Config.TargetFolder]:RemoveZone("mheistself1")
    exports[Config.TargetFolder]:RemoveZone("mheistself2")
    exports[Config.TargetFolder]:RemoveZone("mheistself3")
    exports[Config.TargetFolder]:RemoveZone("mheistdrawer1")
    exports[Config.TargetFolder]:RemoveZone("mheistdrawer2")
    exports[Config.TargetFolder]:RemoveZone("mheistnancydrawer1")
    exports[Config.TargetFolder]:RemoveZone("mheistnancydrawer2")
    exports[Config.TargetFolder]:RemoveZone("mheistnancydrawer3")
    exports[Config.TargetFolder]:RemoveZone("mheistrandomshelf")
    exports[Config.TargetFolder]:RemoveZone("mheistmroom")
    exports[Config.TargetFolder]:RemoveZone("mheistmroomshelf1")
    exports[Config.TargetFolder]:RemoveZone("mheistmroomshelf2")
    exports[Config.TargetFolder]:RemoveZone("mheisthackcomputer")
end