if mods.TintedGhosts and settings.startup["tg-tile-ghost-tint"] then
    data.raw["utility-constants"]["default"].tile_ghost_tint = settings.startup["tg-tile-ghost-tint"].value
end

if mods["big-mining-drill"] and settings.startup["f2-adjust-aai-big-drill"] then
    data.raw["mining-drill"]["big-mining-drill"].max_health = 600
    data.raw["mining-drill"]["big-mining-drill"].mining_speed = 2.5
    data.raw["mining-drill"]["big-mining-drill"].base_productivity = 1.00
    data.raw["mining-drill"]["big-mining-drill"].energy_usage = "500kW"
    data.raw["mining-drill"]["big-mining-drill"].resource_searching_radius = 6.49
    data.raw["mining-drill"]["big-mining-drill"].module_specification.module_slots = 4
    if settings.startup["f2-adjust-drill-pipe-connections"] then
        data.raw["mining-drill"]["big-mining-drill"].input_fluid_box.pipe_connections = {
            -- top
            { position = {-1, -3} },
            { position = {1, -3} },
            --right
            { position = {3, -1} },
            { position = {3, 1} },
            --bottom
            { position = {-1, 3} },
            { position = {1, 3} },
            -- left
            { position = {-3, -1} },
            { position = {-3, 1} },
        }
    end
end