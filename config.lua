Config = {
    -- EVIL
    CoreFolderName = 'qb-core', -- Core Folder Name
    TargetFolder = 'qb-target', -- Target Folder Name
    EnemyWeapon = 'WEAPON_HEAVYPISTOL', -- Enemy Weapon 
    QBNotifyEvent = 'QBCore:Notify', -- Server Notify Event
    DoorId = 'en-mheist-1', -- Door Id
    PzDebug = false, -- Debug Polyzone
    RobInterval = 7200, -- In Seconds 
    RequiredCops = 0, -- Required Cops for the start
    MicPedsLoc = {
        ['SecurityPeds'] = { -- Add More if you want ;-;
            { coords = vector3(-807.63, 175.71, 72.83), heading = 353.58, model = 's_m_y_blackops_01'},
            { coords = vector3(-802.62, 176.82, 72.84), heading = 86.06, model = 's_m_y_blackops_01'},
            { coords = vector3(-799.99, 169.55, 72.83), heading = 67.34, model = 's_m_y_blackops_01'},
            { coords = vector3(-796.9, 178.02, 72.83), heading = 310.04, model = 's_m_y_blackops_01'},
            { coords = vector3(-794.72, 182.95, 72.83), heading = 60.57, model = 's_m_y_blackops_01'},
            { coords = vector3(-797.47, 187.6, 72.61), heading = 5.77, model = 's_m_y_blackops_01'},
            { coords = vector3(-803.33, 185.61, 72.61), heading = 297.09, model = 's_m_y_blackops_01'},
            { coords = vector3(-805.28, 182.57, 72.35), heading = 259.14, model = 's_m_y_blackops_01'},
            { coords = vector3(-808.72, 179.72, 72.15), heading = 349.56, model = 's_m_y_blackops_01'},
            { coords = vector3(-811.04, 181.01, 72.15), heading = 277.28, model = 's_m_y_blackops_01'},
            { coords = vector3(-812.46, 178.91, 72.16), heading = 261.86, model = 's_m_y_blackops_01'},
            { coords = vector3(-814.42, 180.62, 72.16), heading = 261.86, model = 's_m_y_blackops_01'},
            { coords = vector3(-801.65, 179.79, 76.74), heading = 261.86, model = 's_m_y_blackops_01'},
            { coords = vector3(-802.29, 173.54, 76.74), heading = 261.86, model = 's_m_y_blackops_01'},
            { coords = vector3(-809.37, 170.37, 76.74), heading = 261.86, model = 's_m_y_blackops_01'},
            { coords = vector3(-808.82, 175.91, 76.74), heading = 261.86, model = 's_m_y_blackops_01'},
            { coords = vector3(-813.58, 178.7, 76.74), heading = 261.86, model = 's_m_y_blackops_01'},
        },
    },

    RequiredItems = { -- Add More if you want to
        'trojan_usb',
    },

    RewardItems = {  -- Add More if you want to
        ["sandwich"] = 4,
        ["water_bottle"] = 5,
        ["pinger"] = 1,
        ["weapon_pistol"] = 10
    },

    Discord = { -- Discord Logs 
        ['webhook'] = '',
        ['name'] = '',
        ['image'] = '',
    },

    Language = { -- Language change it to your likings
        ['hackbox'] = 'Hack the Main Door',
        ['search'] = " Search",
        ['wait'] = "Wait ",
	    ['minute'] = " minute",
        ['notenoughpolice'] = "Not Enough Police!",
        ['hacksuccess'] = "Hack Successful!",
        ['hackfailed'] = "Hack Successful!",
        ['requireditems'] = "You don\'t have Reuired Items",
        ['hackcomputer'] = "Hack Computer?"
    }
}

-- EVIL
-- EVILANIOUS
-- https://discord.gg/8WwrB63Ger