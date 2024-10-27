local defaultMask = require("__core__.lualib.collision-mask-defaults")

for _, entity in pairs(data.raw["inserter"]) do
    entity.selection_priority = 255
    entity.collision_mask = {
        layers = defaultMask["inserter"].layers,
        consider_tile_transitions = false,
        colliding_with_tiles_only = true,
        -- This is not working when colliding_with_tiles_only is true, but i take it more as a feature rather than a bug
        not_colliding_with_itself = true,
    }
end