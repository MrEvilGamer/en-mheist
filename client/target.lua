CreateThread(function ()
    exports[Config.TargetFolder]:AddBoxZone("melectricalbox",
    vector3(-818.66, 180.09, 71.94), 0.4, 0.4,
    { name="melectricalbox", debugPoly= Config.PzDebug, heading=14,
    minZ=68.74, maxZ=72.74},
    { options =
        {
            {
                event = "en-mheist:hackbox",
                icon = "fas fa-eye",
                label = Config.Language['hackbox']
            },
        },  distance = 1.5
    })
end)

RegisterNetEvent('en-mheist:electrical:boxag', function ()
    exports[Config.TargetFolder]:AddBoxZone("melectricalbox",
    vector3(-818.66, 180.09, 71.94), 0.4, 0.4,
    { name="melectricalbox", debugPoly= Config.PzDebug, heading=14,
    minZ=68.74, maxZ=72.74},
    { options =
        {
            {
                event = "en-mheist:hackbox",
                icon = "fas fa-eye",
                label = Config.Language['hackbox']
            },
        },  distance = 1.5
    })
end)

RegisterNetEvent('en-mheist:create:targets', function ()
    exports[Config.TargetFolder]:AddBoxZone("mheistself1",
    vector3(-807.81, 172.73, 72.84), 1.7, 1,
    { name="mheistself1", debugPoly= Config.PzDebug, heading=22,
    minZ=70.84, maxZ=75.24},
    { options =
        {
            {
                event = "en-mheist:check:1",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistself2",
    vector3(-807.22, 170.85, 72.84), 1.8, 1,
    { name="mheistself2", debugPoly= Config.PzDebug, heading=200,
    minZ=71.04, maxZ=75.04},
    { options =
        {
            {
                event = "en-mheist:check:2",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistself3",
    vector3(-806.37, 169.12, 72.84), 1.7, 1,
    { name="mheistself3", debugPoly= Config.PzDebug, heading=201,
    minZ=70.64, maxZ=74.64},
    { options =
        {
            {
                event = "en-mheist:check:3",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistdrawer1",
    vector3(-804.99, 178.22, 72.84), 1.95, 1,
    { name="mheistdrawer1", debugPoly= Config.PzDebug, heading=290,
    minZ=69.44, maxZ=73.19},
    { options =
        {
            {
                event = "en-mheist:check:4",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistdrawer2",
    vector3(-799.46, 176.5, 72.83), 1.3, 1,
    { name="mheistdrawer2", debugPoly= Config.PzDebug, heading=291,
    minZ=69.63, maxZ=73.63},
    { options =
        {
            {
                event = "en-mheist:check:5",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistnancydrawer1",
    vector3(-802.75, 172.77, 76.75), 1, 1,
    { name="mheistnancydrawer1", debugPoly= Config.PzDebug, heading=22,
    minZ=75.95, maxZ=79.95},
    { options =
        {
            {
                event = "en-mheist:check:6",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistnancydrawer2",
    vector3(-799.2, 172.35, 76.75), 1.6, 1,
    { name="mheistnancydrawer2", debugPoly= Config.PzDebug, heading=21,
    minZ=76.15, maxZ=80.15},
    { options =
        {
            {
                event = "en-mheist:check:7",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistnancydrawer3",
    vector3(-798.58, 169.82, 76.74), 0.7, 0.7,
    { name="mheistnancydrawer3", debugPoly= Config.PzDebug, heading=25,
    minZ=75.94, maxZ=79.94},
    { options =
        {
            {
                event = "en-mheist:check:8",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistrandomshelf",
    vector3(-808.07, 174.57, 76.74), 2.2, 1,
    { name="mheistrandomshelf", debugPoly= Config.PzDebug, heading=291,
    minZ=76.14, maxZ=80.14},
    { options =
        {
            {
                event = "en-mheist:check:9",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistmroom",
    vector3(-810.85, 182.14, 76.74), 2.05, 1,
    { name="mheistmroom", debugPoly= Config.PzDebug, heading=20,
    minZ=75.94, maxZ=79.94},
    { options =
        {
            {
                event = "en-mheist:check:10",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistmroomshelf1",
    vector3(-815.92, 181.54, 76.75), 0.65, 0.6,
    { name="mheistmroomshelf1", debugPoly= Config.PzDebug, heading=20,
    minZ=75.95, maxZ=80.05},
    { options =
        {
            {
                event = "en-mheist:check:11",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })

    exports[Config.TargetFolder]:AddBoxZone("mheistmroomshelf2",
    vector3(-813.35, 182.54, 76.75), 0.6, 0.6,
    { name="mheistmroomshelf2", debugPoly= Config.PzDebug, heading=25,
    minZ=75.95, maxZ=79.95},
    { options =
        {
            {
                event = "en-mheist:check:12",
                icon = "fas fa-eye",
                label = Config.Language['search']
            },
        },  distance = 1.5
    })


    exports[Config.TargetFolder]:AddBoxZone("mheisthackcomputer",
    vector3(-806.66, 166.85, 76.75), 3.0, 1,
    { name="mheisthackcomputer", debugPoly= Config.PzDebug, heading=291,
    minZ=76.15, maxZ=80.15},
    { options =
        {
            {
                event = "en-mheist:hackbox",
                icon = "fas fa-eye",
                label = Config.Language['hackcomputer']
            },
        },  distance = 1.5
    })
end)