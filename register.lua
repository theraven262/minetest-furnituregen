-- Model/Collection Registrations (In the Presence of Mods - Part I)
-- Caverealms Lite
if minetest.get_modpath("caverealms") then
    furniture.caverealms_types = {
        {
            name = "window_glow_obsidian_glass",
            base = "window",
            description = "Glowing Obisdian Glass Window",
            special_materials = "caverealms:glow_obsidian_glass",
            special_textures = "caverealms_glow_obsidian_glass.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_glow_amethyst",
            base = "window",
            description = "Glowing Amethyst Window",
            special_materials = "caverealms:glow_amethyst",
            special_textures = "caverealms_glow_amethyst.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_glow_crystal",
            base = "window",
            description = "Glowing Sapphire Window",
            special_materials = "caverealms:glow_crystal",
            special_textures = "caverealms_glow_crystal.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_glow_emerald",
            base = "window",
            description = "Glowing Emerald Window",
            special_materials = "caverealms:glow_emerald",
            special_textures = "caverealms_glow_emerald.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_glow_mese",
            base = "window",
            description = "Glowing Mese Window",
            special_materials = "caverealms:glow_mese",
            special_textures = "caverealms_glow_mese.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_glow_ruby",
            base = "window",
            description = "Glowing Ruby Window",
            special_materials = "caverealms:glow_ruby",
            special_textures = "caverealms_glow_ruby.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_glow_obsidian_glass_thick",
            base = "window_thick",
            description = "Glowing Obisidan Glass Window",
            special_materials = "caverealms:glow_obsidian_glass",
            special_textures = "caverealms_glow_obsidian_glass.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_glow_amethyst_thick",
            base = "window_thick",
            description = "Glowing Amethyst Window",
            special_materials = "caverealms:glow_amethyst",
            special_textures = "caverealms_glow_amethyst.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_glow_crystal_thick",
            base = "window_thick",
            description = "Glowing Sapphire Window",
            special_materials = "caverealms:glow_crystal",
            special_textures = "caverealms_glow_crystal.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_glow_emerald_thick",
            base = "window_thick",
            description = "Glowing Emerald Window",
            special_materials = "caverealms:glow_emerald",
            special_textures = "caverealms_glow_emerald.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_glow_mese_thick",
            base = "window_thick",
            description = "Glowing Mese Window",
            special_materials = "caverealms:glow_mese",
            special_textures = "caverealms_glow_mese.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_glow_ruby_thick",
            base = "window_thick",
            description = "Glowing Ruby Window",
            special_materials = "caverealms:glow_ruby",
            special_textures = "caverealms_glow_ruby.png",
            light_source = 13,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        }
    }
    furniture.caverealms_woodlike = {
        "window_glow_obsidian_glass",
        "window_glow_amethyst",
        "window_glow_crystal",
        "window_glow_emerald",
        "window_glow_mese",
        "window_glow_ruby"
    }
    furniture.caverealms_stonelike = {        
        "window_glow_obsidian_glass_thick",
        "window_glow_amethyst_thick",
        "window_glow_crystal_thick",
        "window_glow_emerald_thick",
        "window_glow_mese_thick",
        "window_glow_ruby_thick"
    }
    furniture.table_append(furniture.types, furniture.caverealms_types)
    furniture.table_append(furniture.woodlike_set, furniture.caverealms_woodlike)
    furniture.table_append(furniture.stonelike_set, furniture.caverealms_stonelike)
end
-- Darkage
if minetest.get_modpath("darkage") then
    furniture.darkage_types = {
        -- Woodlike
        {
            name = "window_darkage_glass",
            base = "window",
            description = "Medieval Glass Window",
            special_materials = "darkage:glass",
            special_textures = "darkage_glass.png",
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_darkage_glass_round",
            base = "window",
            description = "Round Medieval Glass Window",
            special_materials = "darkage:glass_round",
            special_textures = "darkage_glass_round.png",
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_darkage_glass_square",
            base = "window",
            description = "Square Medieval Glass Window",
            special_materials = "darkage:glass_square",
            special_textures = "darkage_glass_square.png",
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_darkage_glow_glass",
            base = "window",
            description = "Glowing Medieval Glass Window",
            special_materials = "darkage:glass",
            special_textures = "darkage_glass.png",
            light_source = default.LIGHT_MAX-3,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_darkage_glow_glass_round",
            base = "window",
            description = "Glowing Round Medieval Glass Window",
            special_materials = "darkage:glass_round",
            special_textures = "darkage_glass_round.png",
            light_source = default.LIGHT_MAX-3,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_darkage_glow_glass_square",
            base = "window",
            description = "Glowing Square Medieval Glass Window",
            special_materials = "darkage:glass_square",
            special_textures = "darkage_glass_square.png",
            light_source = default.LIGHT_MAX-3,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        -- Stonelike
        {
            name = "window_darkage_glass_thick",
            base = "window_thick",
            description = "Medieval Glass Window",
            special_materials = "darkage:glass",
            special_textures = "darkage_glass.png",
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_darkage_glass_round_thick",
            base = "window_thick",
            description = "Round Medieval Glass Window",
            special_materials = "darkage:glass_round",
            special_textures = "darkage_glass_round.png",
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_darkage_glass_square_thick",
            base = "window_thick",
            description = "Square Medieval Glass Window",
            special_materials = "darkage:glass_square",
            special_textures = "darkage_glass_square.png",
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_darkage_glow_glass_thick",
            base = "window_thick",
            description = "Glowing Medieval Glass Window",
            special_materials = "darkage:glass",
            special_textures = "darkage_glass.png",
            light_source = default.LIGHT_MAX-3,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_darkage_glow_glass_round_thick",
            base = "window_thick",
            description = "Glowing Round Medieval Glass Window",
            special_materials = "darkage:glass_round",
            special_textures = "darkage_glass_round.png",
            light_source = default.LIGHT_MAX-3,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_darkage_glow_glass_square_thick",
            base = "window_thick",
            description = "Glowing Square Medieval Glass Window",
            special_materials = "darkage:glass_square",
            special_textures = "darkage_glass_square.png",
            light_source = default.LIGHT_MAX-3,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        -- Universal
        {
            name = "flowerpot_darkdirt",
            base = "flowerpot",
            description = "Flowerpot with Dark Dirt",
            special_materials = "darkage:darkdirt",
            special_textures = "darkage_darkdirt.png",
            box = {-7/16, -8/16, -7/16, 7/16, 8/16, 7/16},
            crafting = {2, 3, 2, 2, 1, 2, 2, 1, 2}
        },
    }
    furniture.darkage_woodlike = {
        "window_darkage_glass",
        "window_darkage_glass_round",
        "window_darkage_glass_square",
        "window_darkage_glow_glass",
        "window_darkage_glow_glass_round",
        "window_darkage_glow_glass_square",
        "flowerpot_darkdirt"        
    }
    furniture.darkage_stonelike = {        
        "window_darkage_glass_thick",
        "window_darkage_glass_round_thick",
        "window_darkage_glass_square_thick",
        "window_darkage_glow_glass_thick",
        "window_darkage_glow_glass_round_thick",
        "window_darkage_glow_glass_square_thick",
        "flowerpot_darkdirt"
    }
    furniture.table_append(furniture.types, furniture.darkage_types)
    furniture.table_append(furniture.woodlike_set, furniture.darkage_woodlike)
    furniture.table_append(furniture.stonelike_set, furniture.darkage_stonelike)
end
-- Moreblocks
if minetest.get_modpath("moreblocks") then
    furniture.moreblocks_types = {
        {
            name = "window_glow_glass",
            base = "window",
            description = "Glowing Glass Window",
            special_materials = "moreblocks:glow_glass",
            special_textures = "default_glass.png^[colorize:#E9CD61",
            light_source = 11,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_super_glow_glass",
            base = "window",
            description = "Super Glowing Glass Window",
            special_materials = "moreblocks:super_glow_glass",
            special_textures = "default_glass.png^[colorize:#FFFF78",
            light_source = default.LIGHT_MAX,
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        {
            name = "window_glow_glass_thick",
            base = "window_thick",
            description = "Glowing Glass Window",
            special_materials = "moreblocks:glow_glass",
            special_textures = "furniture_glass.png^[colorize:#E9CD61",
            light_source = 11,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        {
            name = "window_super_glow_glass_thick",
            base = "window_thick",
            description = "Super Glowing Glass Window",
            special_materials = "moreblocks:super_glow_glass",
            special_textures = "furniture_glass.png^[colorize:#FFFF78",
            light_source = default.LIGHT_MAX,
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        }
    }
    furniture.moreblocks_woodlike = {
        "window_glow_glass",
        "window_super_glow_glass"
    }
    furniture.moreblocks_stonelike = {        
        "window_glow_glass_thick",
        "window_super_glow_glass_thick"
    }
    furniture.table_append(furniture.types, furniture.moreblocks_types)
    furniture.table_append(furniture.woodlike_set, furniture.moreblocks_woodlike)
    furniture.table_append(furniture.stonelike_set, furniture.moreblocks_stonelike)
end

-- Default Material Registration

furniture.register("default:wood", furniture.woodlike_set, {"default:wood", "default:stick"}, "furniture_wood.png")
furniture.register("default:steelblock", furniture.woodlike_set, {"default:steelblock", "default:steel_ingot"}, "furniture_steelblock.png")

if minetest.get_modpath("moreblocks") then -- Cause moreblocks overrides slabs
    furniture.register("default:sandstone", furniture.stonelike_set, {"default:sandstone", "moreblocks:slab_sandstone"}, "default_sandstone_block.png")
    furniture.register("default:stone", furniture.stonelike_set, {"default:stone", "moreblocks:slab_stone"}, "default_stone_block.png")
else
    furniture.register("default:sandstone", furniture.stonelike_set, {"default:sandstone", "stairs:slab_sandstone"}, "default_sandstone_block.png")
    furniture.register("default:stone", furniture.stonelike_set, {"default:stone", "stairs:slab_stone"}, "default_stone_block.png")
end

-- Mod Material Registration (In the Presence of Mods - Part II)

-- Caverealms Lite
if minetest.get_modpath("caverealms") then
    furniture.register("caverealms:glow_obsidian", furniture.stonelike_set, {"caverealms:glow_obsidian", "caverealms:glow_obsidian_glass"}, furniture.brick_to_tile("caverealms_glow_obsidian_brick.png"))
end
-- Darkage
if minetest.get_modpath("darkage") then
    local secondary_basalt = "stairs:slab_darkage_basalt"
    local secondary_marble = "stairs:slab_marble"
    if minetest.get_modpath("moreblocks") then
        secondary_basalt = "darkage:slab_basalt"
        secondary_marble = "darkage:slab_marble"
    end
    furniture.register("darkage:basalt", furniture.stonelike_set, {"darkage:basalt", secondary_basalt}, "darkage_basalt_block.png")
    furniture.register("darkage:marble", furniture.stonelike_set, {"darkage:marble", secondary_marble}, "darkage_marble_tile.png")
end
-- Moreblocks
if minetest.get_modpath("moreblocks") then
    furniture.register("moreblocks:stone_tile", furniture.stonelike_set, {"moreblocks:stone_tile", "moreblocks:slab_stone_tile"}, "moreblocks_stone_tile.png")
    furniture.register("moreblocks:coal_stone_bricks", furniture.stonelike_set, {"moreblocks:coal_stone_bricks", "moreblocks:slab_coal_stone_bricks"}, furniture.brick_to_tile("moreblocks_coal_stone_bricks.png"))
end