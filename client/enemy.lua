RegisterNetEvent('en-mheist:spawnenemy', function()
    SpawnGuards()
end)

function SpawnGuards()
    local ped = PlayerPedId()

    SetPedRelationshipGroupHash(ped, GetHashKey('PLAYER'))
    AddRelationshipGroup('GuardPeds')

    for k, v in pairs(Config.MicPedsLoc['SecurityPeds']) do
        RequestModel(GetHashKey(v.model))
			while not HasModelLoaded(GetHashKey(v.model)) do
                RequestModel(GetHashKey(v.model))
				Wait(1)
			end
        Config.MicPedsLoc['SecurityPeds'][k] = CreatePed(26, GetHashKey(v['model']), v['coords'], v['heading'], true, true)
        NetworkRegisterEntityAsNetworked(Config.MicPedsLoc['SecurityPeds'][k])
        networkID = NetworkGetNetworkIdFromEntity(Config.MicPedsLoc['SecurityPeds'][k])
        SetNetworkIdCanMigrate(networkID, true)
        SetNetworkIdExistsOnAllMachines(networkID, true)
        SetPedRandomComponentVariation(Config.MicPedsLoc['SecurityPeds'][k], 0)
        SetPedRandomProps(Config.MicPedsLoc['SecurityPeds'][k])
        SetEntityAsMissionEntity(Config.MicPedsLoc['SecurityPeds'][k])
        SetEntityVisible(Config.MicPedsLoc['SecurityPeds'][k], true)
        SetPedRelationshipGroupHash(Config.MicPedsLoc['SecurityPeds'][k], GetHashKey("GuardPeds"))
        SetPedAccuracy(Config.MicPedsLoc['SecurityPeds'][k], 50)
        SetPedArmour(Config.MicPedsLoc['SecurityPeds'][k], 100)
        SetPedCanSwitchWeapon(Config.MicPedsLoc['SecurityPeds'][k], true)
        SetPedDropsWeaponsWhenDead(Config.MicPedsLoc['SecurityPeds'][k], false)
		SetPedFleeAttributes(Config.MicPedsLoc['SecurityPeds'][k], 0, false)
        GiveWeaponToPed(Config.MicPedsLoc['SecurityPeds'][k], GetHashKey(Config.EnemyWeapon), 255, false, false)
        local random = math.random(1, 2)
        if random == 2 then
            TaskGuardCurrentPosition(Config.MicPedsLoc['SecurityPeds'][k], 10.0, 10.0, 1)
        end
    end

    SetRelationshipBetweenGroups(0, GetHashKey("GuardPeds"), GetHashKey("GuardPeds"))
	SetRelationshipBetweenGroups(5, GetHashKey("GuardPeds"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"),  GetHashKey("GuardPeds"))
end