local QBCore = exports['qb-core']:GetCoreObject()

Config = {}

Config.TargetFramework = 'ox_target' -- leave as ox_target, we MAY add support for qb-target in future..

Config.Targets = {
    {
        coords = vector3(-1353.27, -1421.43, 4.31),
        size = vec3(1, 1, 1),
        rotation = 0,
        debug = true,
        options = {
            {
                name = 'Target1',
                event = 'test:event',
                icon = 'fa-solid fa-circle',
                label = 'Example Label',
            }
        }
    },
    {
        coords = vector3(-1351.12, -1434.34, 4.32),
        size = vec3(1, 1, 1),
        rotation = 0,
        debug = true,
        options = {
            {
                name = 'Target2',
                event = 'test:event2',
                icon = 'fa-solid fa-square',
                label = 'Example Label 2',
            }
        }
    },
    {
        coords = vector3(-99.19, -795.50, 43.00),
        size = vec3(3, 3, 3),
        rotation = 0,
        debug = true,
        options = {
            {
                name = 'Target3',
                event = 'ss-welcome:client:openUI',
                icon = 'fa-solid fa-code',
                label = 'Check Code',
            }
        }
    },
    {
        coords = vector3(-8.70, -674.29, 32.45),
        size = vec3(3, 3, 3),
        rotation = 0,
        debug = true,
        options = {
            {
                name = 'Target3',
                event = 'zf-groups:server:createGroup',
                icon = 'fa-solid fa-code',
                label = 'Check Code',
            }
        }
    },
    -- Add more targets here if needed
}

-- /////////////////////////////////////////
-- ///////////// EXAMPLE EVENT ////////////
-- /////////////  DELETE THIS ////////////
-- //////////////////////////////////////

RegisterNetEvent("test:event")
AddEventHandler("test:event", function()
    QBCore.Functions.Notify("Congratulations! You triggered the event!", 'success', 10000)
end)

RegisterNetEvent("test:event2")
AddEventHandler("test:event2", function()
    QBCore.Functions.Notify("Congratulations! You triggered the second event!", 'error', 10000)
end)

