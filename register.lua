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
    furniture.caverealms_door_open_sounds = {
        caverealms_glow_amethyst = "doors_glass_door_open",
        caverealms_glow_crystal = "doors_glass_door_open",
        caverealms_glow_emerald = "doors_glass_door_open",
        caverealms_glow_mese = "doors_glass_door_open",
        caverealms_glow_ruby = "doors_glass_door_open",
        caverealms_glow_obsidian_glass = "doors_glass_door_open",
    }
    furniture.caverealms_door_close_sounds = {
        caverealms_glow_amethyst = "doors_glass_door_close",
        caverealms_glow_crystal = "doors_glass_door_close",
        caverealms_glow_emerald = "doors_glass_door_close",
        caverealms_glow_mese = "doors_glass_door_close",
        caverealms_glow_ruby = "doors_glass_door_close",
        caverealms_glow_obsidian_glass = "doors_glass_door_close",
    }

    furniture.dictionary_append(furniture.door_open_sounds, furniture.caverealms_door_open_sounds)
    furniture.dictionary_append(furniture.door_close_sounds, furniture.caverealms_door_close_sounds)

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
-- Dwarf Fortress Caverns
if minetest.get_modpath("df_mapitems") then
    furniture.dfmap_types = {
        -- Woodlike
        {
            name = "window_df_mese",
            base = "window",
            description = "Flawless Mese Window",
            special_materials = "df_mapitems:glow_mese",
            special_textures = "furniture_caverealms_glow_mese.png",
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        -- Stonelike
        {
            name = "window_df_mese_thick",
            base = "window_thick",
            description = "Flawless Mese Window",
            special_materials = "df_mapitems:glow_mese",
            special_textures = "furniture_caverealms_glow_mese.png",
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
    }
    furniture.dfmap_woodlike = {
        "window_df_mese",
    }
    furniture.dfmap_stonelike = {
        "window_df_mese_thick",
    }
    furniture.table_append(furniture.types, furniture.dfmap_types)
    furniture.table_append(furniture.woodlike_set, furniture.dfmap_woodlike)
    furniture.table_append(furniture.stonelike_set, furniture.dfmap_stonelike)
end
if minetest.get_modpath("df_underworld_items") then
    furniture.dfunder_types = {
        -- Woodlike
        {
            name = "window_df_amethyst",
            base = "window",
            description = "Amethyst Window",
            special_materials = "df_underworld_items:glow_amethyst",
            special_textures = "furniture_caverealms_glow_amethyst.png",
            box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
            crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
        },
        -- Stonelike
        {
            name = "window_df_amethyst_thick",
            base = "window_thick",
            description = "Amethyst Window",
            special_materials = "df_underworld_items:glow_amethyst",
            special_textures = "furniture_caverealms_glow_amethyst.png",
            box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
            crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
        },
        -- Universal
        {
            name = "flowerpot_slade_sand",
            base = "flowerpot",
            description = "Flowerpot with Slade Sand",
            special_materials = "df_underworld_items:slade_sand",
            special_textures = "dfcaverns_slade_sand.png",
            box = {-7/16, -8/16, -7/16, 7/16, 8/16, 7/16},
            crafting = {2, 3, 2, 2, 1, 2, 2, 1, 2}
        },
    }
    furniture.dfunder_woodlike = {
        "window_df_amethyst",
        "flowerpot_slade_sand"
    }
    furniture.dfunder_stonelike = {
        "window_df_amethyst_thick",
        "flowerpot_slade_sand"
    }
    furniture.table_append(furniture.types, furniture.dfunder_types)
    furniture.table_append(furniture.woodlike_set, furniture.dfunder_woodlike)
    furniture.table_append(furniture.stonelike_set, furniture.dfunder_stonelike)
end
-- Ethereal
if minetest.get_modpath("ethereal") then
    furniture.ethereal_types = {
        {
            name = "flowerpot_ethereal_dry_dirt",
            base = "flowerpot",
            description = "Flowerpot with Dried Dirt",
            special_materials = "ethereal:dry_dirt",
            special_textures = "ethereal_dry_dirt.png",
            box = {-7/16, -8/16, -7/16, 7/16, 8/16, 7/16},
            crafting = {2, 3, 2, 2, 1, 2, 2, 1, 2}
        },
    }
    furniture.ethereal_stonelike = {
        "flowerpot_ethereal_dry_dirt",
    }
    furniture.ethereal_woodlike = {
        "flowerpot_ethereal_dry_dirt"
    }
    furniture.table_append(furniture.types, furniture.ethereal_types)
    furniture.table_append(furniture.stonelike_set, furniture.ethereal_stonelike)
    furniture.table_append(furniture.woodlike_set, furniture.ethereal_woodlike)
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
furniture.register("default:acacia_wood", furniture.woodlike_set, {"default:acacia_wood", "default:stick"}, "furniture_acacia_wood.png")
furniture.register("default:aspen_wood", furniture.woodlike_set, {"default:aspen_wood", "default:stick"}, "furniture_aspen_wood.png")
furniture.register("default:junglewood", furniture.woodlike_set, {"default:junglewood", "default:stick"}, "furniture_junglewood.png")
furniture.register("default:pine_wood", furniture.woodlike_set, {"default:pine_wood", "default:stick"}, "furniture_pine_wood.png")
furniture.register("default:steelblock", furniture.woodlike_set, {"default:steelblock", "default:steel_ingot"}, "furniture_steelblock.png")

local sandstone_secondary = "stairs:slab_sandstone"
local stone_secondary = "stairs:slab_stone"

if minetest.get_modpath("moreblocks") then -- Cause moreblocks overrides slabs
    sandstone_secondary = "moreblocks:slab_sandstone"
    stone_secondary = "moreblocks:slab_stone"
end

furniture.register("default:sandstone", furniture.stonelike_set, {"default:sandstone", sandstone_secondary}, "default_sandstone_block.png")
furniture.register("default:stone", furniture.stonelike_set, {"default:stone", stone_secondary}, "default_stone_block.png")

furniture.register("default:glass", furniture.glasslike_set, {"default:glass", "default:sand"}, "default_glass.png")
furniture.register("default:obsidian_glass", furniture.glasslike_set, {"default:obsidian_glass", "default:obsidian_shard"}, "default_obsidian_glass.png")

-- Mod Material Registration (In the Presence of Mods - Part II)

-- Caverealms Lite
if minetest.get_modpath("caverealms") then
    furniture.register("caverealms:glow_obsidian", furniture.stonelike_set, {"caverealms:glow_obsidian", "caverealms:glow_obsidian_glass"}, furniture.brick_to_tile("caverealms_glow_obsidian_brick.png"))
    furniture.register("caverealms:glow_amethyst", furniture.glasslike_set, {"caverealms:glow_amethyst", "caverealms:fungus"}, "furniture_caverealms_glow_amethyst.png")
    furniture.register("caverealms:glow_crystal", furniture.glasslike_set, {"caverealms:glow_crystal", "caverealms:glow_gem"}, "furniture_caverealms_glow_crystal.png")
    furniture.register("caverealms:glow_emerald", furniture.glasslike_set, {"caverealms:glow_emerald", "caverealms:glow_worm_green"}, "furniture_caverealms_glow_emerald.png")
    furniture.register("caverealms:glow_mese", furniture.glasslike_set, {"caverealms:glow_mese", "default:mese_crystal_fragment"}, "furniture_caverealms_glow_mese.png")
    furniture.register("caverealms:glow_ruby", furniture.glasslike_set, {"caverealms:glow_ruby", "caverealms:fire_vine"}, "furniture_caverealms_glow_ruby.png")
    furniture.register("caverealms:glow_obsidian_glass", furniture.glasslike_set, {"caverealms:glow_obsidian_glass", "default:obsidian_shard"})
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
-- Dwarf Fortress Caves
if minetest.get_modpath("df_mapitems") then
    furniture.register("df_mapitems:glow_mese", furniture.glasslike_set, {"df_mapitems:glow_mese", "default:mese_crystal_fragment"}, "furniture_caverealms_glow_mese.png")
end
if minetest.get_modpath("df_underworld_items") then
    furniture.register("df_underworld_items:slade", furniture.stonelike_set, {"df_underworld_items:slade_brick", "df_underworld_items:slade_sand"}, "dfcaverns_slade_block.png")
    furniture.register("df_underworld_items:glow_amethyst", furniture.glasslike_set, {"df_underworld_items:glow_amethyst", "default:obsidian_shard"}, "furniture_caverealms_glow_amethyst.png")
end
if minetest.get_modpath("df_trees") then
    furniture.register("df_trees:black_cap_wood", furniture.woodlike_set, {"df_trees:black_cap_wood", "default:stick"}, "furniture_dfcaverns_black_cap.png")
    furniture.register("df_trees:blood_thorn_wood", furniture.woodlike_set, {"df_trees:blood_thorn_wood", "default:stick"}, "furniture_dfcaverns_blood_thorn.png")
    furniture.register("df_trees:fungiwood_wood", furniture.woodlike_set, {"df_trees:fungiwood_wood", "default:stick"}, "furniture_dfcaverns_fungiwood.png")
    furniture.register("df_trees:goblin_cap_wood", furniture.woodlike_set, {"df_trees:goblin_cap_wood", "default:stick"}, "furniture_dfcaverns_goblin_cap.png")
    furniture.register("df_trees:goblin_cap_stem_wood", furniture.woodlike_set, {"df_trees:goblin_cap_stem_wood", "default:stick"}, "furniture_dfcaverns_goblin_cap_stem.png")
    furniture.register("df_trees:nether_cap_wood", furniture.woodlike_set, {"df_trees:nether_cap_wood", "default:stick"}, "furniture_dfcaverns_nether_cap.png")
    furniture.register("df_trees:spore_tree_wood", furniture.woodlike_set, {"df_trees:spore_tree_wood", "default:stick"}, "furniture_dfcaverns_spore_tree.png")
    furniture.register("df_trees:tower_cap_wood", furniture.woodlike_set, {"df_trees:tower_cap_wood", "default:stick"}, "furniture_dfcaverns_tower_cap.png")
    furniture.register("df_trees:tunnel_tube_wood", furniture.woodlike_set, {"df_trees:tunnel_tube_wood", "default:stick"}, "furniture_dfcaverns_tunnel_tube.png")
end
if minetest.get_modpath("df_primordial_items") then
    furniture.register("df_primordial_items:fern_wood", furniture.woodlike_set, {"df_primordial_items:fern_wood", "default:stick"}, "furniture_dfcaverns_giant_fern.png")
end
--Ethereal
if minetest.get_modpath("ethereal") then
    local secondary_blue_marble = "stairs:slab_blue_marble"
    if minetest.get_modpath("moreblocks") then
        secondary_blue_marble = "ethereal:slab_blue_marble"
    end
    furniture.register("ethereal:blue_marble", furniture.stonelike_set, {"ethereal:blue_marble", secondary_blue_marble}, "ethereal_blue_marble_tile.png")
    furniture.register("ethereal:banana_wood", furniture.woodlike_set, {"ethereal:banana_wood", "default:stick"}, "furniture_ethereal_banana_wood.png")
    furniture.register("ethereal:birch_wood", furniture.woodlike_set, {"ethereal:birch_wood", "default:stick"}, "furniture_ethereal_birch_wood.png")
    furniture.register("ethereal:frost_wood", furniture.woodlike_set, {"ethereal:frost_wood", "default:stick"}, "furniture_ethereal_frost_wood.png")
    furniture.register("ethereal:mushroom_trunk", furniture.woodlike_set, {"ethereal:mushroom_trunk", "default:stick"}, "furniture_ethereal_mushroom_trunk.png")
    furniture.register("ethereal:olive_wood", furniture.woodlike_set, {"ethereal:olive_wood", "default:stick"}, "furniture_ethereal_olive_wood.png")
    furniture.register("ethereal:palm_wood", furniture.woodlike_set, {"ethereal:palm_wood", "default:stick"}, "furniture_ethereal_palm_wood.png")
    furniture.register("ethereal:redwood_wood", furniture.woodlike_set, {"ethereal:redwood_wood", "default:stick"}, "furniture_ethereal_redwood_wood.png")
    furniture.register("ethereal:sakura_wood", furniture.woodlike_set, {"ethereal:sakura_wood", "default:stick"}, "furniture_ethereal_sakura_wood.png")
    furniture.register("ethereal:willow_wood", furniture.woodlike_set, {"ethereal:willow_wood", "default:stick"}, "furniture_ethereal_willow_wood.png")
    furniture.register("ethereal:yellow_wood", furniture.woodlike_set, {"ethereal:yellow_wood", "default:stick"}, "furniture_ethereal_yellow_wood.png")
end
-- Moreblocks
if minetest.get_modpath("moreblocks") then
    furniture.register("moreblocks:stone_tile", furniture.stonelike_set, {"moreblocks:stone_tile", "moreblocks:slab_stone_tile"}, "moreblocks_stone_tile.png")
    furniture.register("moreblocks:coal_stone_bricks", furniture.stonelike_set, {"moreblocks:coal_stone_bricks", "moreblocks:slab_coal_stone_bricks"}, furniture.brick_to_tile("moreblocks_coal_stone_bricks.png"))
end