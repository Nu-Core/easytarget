local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetFramework == 'ox_target' then
    for _, target in ipairs(Config.Targets) do
        local optionsData = {}
        for _, option in ipairs(target.options) do
            table.insert(optionsData, {
                name = option.name,
                event = option.event,
                icon = option.icon,
                label = option.label
            })
        end
        
        exports.ox_target:addBoxZone({
            coords = target.coords,
            size = target.size,
            rotation = target.rotation,
            debug = target.debug,
            options = optionsData
        })
    end
else
    print("Invalid Target Framework specified in config.lua. MUST BE OX_TARGET.")
end
