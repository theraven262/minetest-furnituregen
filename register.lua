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

-- Default Material Registration

furniture.register("default:wood", furniture.woodlike_set, {"default:wood", "default:stick"}, "furniture_wood.png")
furniture.register("default:steelblock", furniture.woodlike_set, {"default:steelblock", "default:steel_ingot"}, "furniture_steelblock.png")

furniture.register("default:sandstone", furniture.stonelike_set, {"default:sandstone", "stairs:slab_sandstone"}, "default_sandstone_block.png")
furniture.register("default:stone", furniture.stonelike_set, {"default:stone", "stairs:slab_stone"}, "default_stone_block.png")

-- Mod Material Registration (In the Presence of Mods - Part II)

-- Moreblocks
if minetest.get_modpath("moreblocks") then
    furniture.register("moreblocks:stone_tile", furniture.stonelike_set, {"moreblocks:stone_tile", "moreblocks:slab_stone_tile"}, "moreblocks_stone_tile.png")
    furniture.register("moreblocks:coal_stone_bricks", furniture.stonelike_set, {"moreblocks:coal_stone_bricks", "moreblocks:slab_coal_stone_bricks"}, furniture.brick_to_tile("moreblocks_coal_stone_bricks.png"))
end

-- Caverealms Lite
if minetest.get_modpath("caverealms") then
    furniture.register("caverealms:glow_obsidian_brick", furniture.stonelike_set, {"caverealms:glow_obsidian_brick", "caverealms:glow_obsidian_glass"}, furniture.brick_to_tile("caverealms_glow_obsidian_brick.png"))
end