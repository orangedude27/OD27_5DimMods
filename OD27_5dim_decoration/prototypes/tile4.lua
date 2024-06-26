data:extend(
    {
        -- Item
        {
            type = "item",
            name = "5d-concrete-m",
            icon = "__OD27_5dim_decoration__/graphics/icon/concreteM.png",
            -- flags = {"goes-to-main-inventory"},
            icon_size = 32,
            subgroup = "decoration-floor",
            order = "b[concrete]",
            stack_size = 100,
            place_as_tile = {
                result = "5d-concrete-m",
                condition_size = 4,
                condition = {"water-tile"}
            }
        },
        --Recipe
        {
            type = "recipe",
            name = "5d-concrete-m",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {"concrete", 10}
            },
            result = "5d-concrete-m",
            result_count = 10
        }
    }
)

--Entity
if not data.is_demo then
    data:extend(
        {
            {
                type = "tile",
                name = "5d-concrete-m",
                needs_correction = false,
                minable = {hardness = 0.2, mining_time = 0.5, result = "5d-concrete-m"},
                mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
                collision_mask = {"ground-tile"},
                walking_speed_modifier = 1.4,
                layer = 61,
                decorative_removal_probability = 0.9,
                variants = {
                    main = {
                        {
                            picture = "__OD27_5dim_decoration__/graphics/icon/concrete1M.png",
                            count = 16,
                            size = 1
                        },
                        {
                            picture = "__OD27_5dim_decoration__/graphics/icon/concrete2M.png",
                            count = 4,
                            size = 2,
                            probability = 0.39
                        },
                        {
                            picture = "__OD27_5dim_decoration__/graphics/icon/concrete4M.png",
                            count = 4,
                            size = 4,
                            probability = 1
                        }
                    },
                    inner_corner = {
                        picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
                        count = 8
                    },
                    outer_corner = {
                        picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
                        count = 8
                    },
                    side = {
                        picture = "__base__/graphics/terrain/concrete/concrete-side.png",
                        count = 8
                    },
                    u_transition = {
                        picture = "__base__/graphics/terrain/concrete/concrete-u.png",
                        count = 8
                    },
                    o_transition = {
                        picture = "__base__/graphics/terrain/concrete/concrete-o.png",
                        count = 1
                    }
                },
                walking_sound = {
                    {
                        filename = "__base__/sound/walking/concrete-01.ogg",
                        volume = 1.2
                    },
                    {
                        filename = "__base__/sound/walking/concrete-02.ogg",
                        volume = 1.2
                    },
                    {
                        filename = "__base__/sound/walking/concrete-03.ogg",
                        volume = 1.2
                    },
                    {
                        filename = "__base__/sound/walking/concrete-04.ogg",
                        volume = 1.2
                    }
                },
                map_color = {r = 100, g = 100, b = 100},
                ageing = 0,
                vehicle_friction_modifier = concrete_vehicle_speed_modifier,
                pollution_absorption_per_second = 1
            }
        }
    )
end
