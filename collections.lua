-- Sound tables
furniture.storage_sounds = {
    default = "doors_door_open",
    wood = "doors_door_open",
    steelblock = "doors_steel_door_open"
}
furniture.door_open_sounds = {
    default = "doors_door_open",
    wood = "doors_door_open",
    steelblock = "doors_steel_door_open"
}
furniture.door_close_sounds = {
    default = "doors_door_close",
    wood = "doors_door_close",
    steelblock = "doors_steel_door_close"
}

-- Model collections
furniture.types = {
    {
        name = "chair",
        description = "Chair",
        box = {-0.3125, -0.5, -0.375, 0.3125, 0.6875, 0.3125},
        crafting = {0, 0, 1, 0, 1, 1, 0, 2, 2}
    },
    {
        name = "table_square",
        description = "Square Table",
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 0, 0, 1, 1, 1, 2, 0, 2}
    },
    {
        name = "table_round",
        description = "Round Table",
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 1, 0, 1, 1, 1, 2, 1, 2}
    },
    {
        name = "cabinet",
        description = "Cabinet",
        generate_locked = true,
        storage = 4,
        box = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {2, 1, 1, 2, 1, 1, 0, 2, 2}
    },
    {
        name = "half_cabinet",
        description = "Half Cabinet",
        generate_locked = true,
        storage = 2,
        box = {-0.5, -2/16, -0.5, 0.5, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {2, 1, 1, 0, 0, 0, 0, 0, 0}
    },
    {
        name = "wardrobe",
        description = "Wardrobe",
        generate_locked = true,
        storage = 8,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {0, 2, 1, 0, 2, 1, 0, 2, 2}
    },
    {
        name = "window_glass",
        base = "window",
        description = "Glass Window",
        special_materials = "default:glass",
        special_textures = "default_glass.png",
        box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
        crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
    },
    {
        name = "window_obsidian_glass",
        base = "window",
        description = "Obisdian Glass Window",
        special_materials = "default:obsidian_glass",
        special_textures = "default_obsidian_glass.png",
        box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
        crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
    },
    {
        name = "shelf_small",
        description = "Small Empty Shelf",
        generate_locked = true,
        storage = 2,
        box = {-0.5, -0.5, -0.0625, 0.5, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {0, 2, 2, 0, 1, 1, 0, 2, 2}
    },
    {
        name = "shelf_small_book",
        base = "shelf_small_filled",
        description = "Small Bookshelf",
        special_materials = "default:book",
        special_textures = "furniture_bookshelf1.png",
        box = {-0.5, -0.5, -0.0625, 0.5, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {3, 2, 2, 0, 1, 1, 3, 2, 2}
    },
    {
        name = "shelf_wide",
        description = "Wide Empty Shelf",
        generate_locked = true,
        storage = 4,
        box = {-1.0, -0.5, -0.0625, 1.0, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {2, 2, 2, 1, 1, 1, 2, 2, 2}
    },
    -- Stonelike
    {
        name = "window_glass_thick",
        base = "window_thick",
        description = "Glass Window",
        special_materials = "default:glass",
        special_textures = "default_glass.png",
        box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
        crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
    },
    {
        name = "window_obsidian_glass_thick",
        base = "window_thick",
        description = "Obisidan Glass Window",
        special_materials = "default:obsidian_glass",
        special_textures = "default_obsidian_glass.png",
        box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
        crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
    },
    {
        name = "chair_thick",
        description = "Chair",
        box = {-6/16, -0.5, -5/16, 6/16, 0.5, 7/16},
        crafting = {0, 0, 2, 0, 1, 1, 2, 2, 2}
    },
    {
        name = "table_square_thick",
        description = "Square Table",
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 0, 0, 2, 2, 2, 2, 1, 2}
    },
    {
        name = "table_round_thick",
        description = "Round Table",
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 0, 0, 2, 2, 2, 1, 2, 1}
    },
    {
        name = "shelf_small_thick",
        description = "Small Empty Shelf",
        storage = 2,
        box = {-0.5, -0.5, -0.0625, 0.5, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {0, 2, 2, 0, 1, 1, 0, 2, 2}
    },
    {
        name = "shelf_wide_thick",
        description = "Wide Empty Shelf",
        storage = 4,
        box = {-1.0, -0.5, -0.0625, 1.0, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {2, 2, 2, 1, 1, 1, 2, 2, 2}
    },
    {
        name = "cabinet_thick",
        description = "Cabinet",
        generate_locked = true,
        storage = 4,
        box = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {2, 1, 1, 2, 1, 1, 0, 0, 0}
    },
    {
        name = "half_cabinet_thick",
        description = "Half Cabinet",
        generate_locked = true,
        storage = 2,
        box = {-0.5, -2/16, -0.5, 0.5, 0.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {2, 1, 1, 0, 0, 0, 0, 0, 0}
    },
    {
        name = "wardrobe_thick",
        description = "Wardrobe",
        generate_locked = true,
        storage = 8,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
        activate_sound = furniture.storage_sounds,
        crafting = {2, 1, 1, 2, 1, 1, 2, 1, 1}
    },
    -- Glasslike (tba)
    -- Universal
    {
        name = "mirror",
        description = "Mirror",
        special_materials = "default:glass",
        special_textures = "furniture_glass_full.png",
        box = {-4/16, -7/16, 6/16, 4/16, 7/16, 8/16},
        crafting = {2, 2, 2, 2, 3, 2, 2, 2, 2}
    },
    {
        name = "flowerpot",
        description = "Flowerpot",
        special_materials = "default:dirt",
        special_textures = "default_dirt.png",
        box = {-7/16, -8/16, -7/16, 7/16, 8/16, 7/16},
        crafting = {2, 3, 2, 2, 1, 2, 2, 1, 2}
    },
    {
        name = "door",
        description = "Door",
        active = true,
        generate_locked = true,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, -4/16},
        box_activated = {-0.5, -0.5, -0.5, -4/16, 1.5, 0.5},
        activate_sound = furniture.door_open_sounds,
        deactivate_sound = furniture.door_close_sounds,
        crafting = {1, 1, 0, 1, 1, 2, 1, 1, 0}
    },
    {
        name = "door_flipped",
        description = "Door (flipped)",
        active = true,
        generate_locked = true,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, -4/16},
        box_activated = {0.5, -0.5, -0.5, 4/16, 1.5, 0.5},
        activate_sound = furniture.door_open_sounds,
        deactivate_sound = furniture.door_close_sounds,
        crafting = {0, 1, 1, 2, 1, 1, 0, 1, 1}
    },
    {
        -- name - code name
        -- base - base model, no file extension (leave empty if same as name)
        -- description - description prefix
        -- active [true/false] - does this node swap with a different version when right clicked
        -- special_materials - materials other than base, used for crafting (optional, order important)
        -- special_textures - textures other than base (optional, order important)
        -- special_textures_activated - textures other than base for the activated model (optional, order important)
        -- light_source - override for the base node (optional, inherited from base)
        -- light_source_activated - override for the activated node (optional, inherited from base)
        -- storage - number of rows of inventory, 8 slots each (optional)
        -- generate_locked [true/false] - do the locked versions of the node generate (optional, only works if there is storage or node is active)
        -- box - both the selection and the collision box
        -- box_activated - both the selection and the collision box for the activated counterpart
        -- activate_sound - table containing the default and specific sounds that play upon activation
        -- deactivate_sound - table containing the default and specific sounds that play upon activation of the active counterpart
        -- crafting - an array where each position corresponds to a cell in the crafting grid, values represent materials; 0 is empty, 1 is base and
        -- above are the other materials in the order from special_materials
    },
}

-- Sets
furniture.woodlike_set = {
    "chair",
    "table_square",
    "table_round",
    "shelf_small",
    "shelf_wide",
    "window_glass",
    "window_obsidian_glass",
    "cabinet",
    "half_cabinet",
    "wardrobe",
    "mirror",
    "flowerpot",
    "door",
    "door_flipped",
    "shelf_small_book"
}

furniture.stonelike_set = {
    "chair_thick",
    "table_square_thick",
    "table_round_thick",
    "shelf_small_thick",
    "shelf_wide_thick",
    "cabinet_thick",
    "half_cabinet_thick",
    "wardrobe_thick",
    "window_glass_thick",
    "window_obsidian_glass_thick",
    "mirror",
    "flowerpot",
    "door",
    "door_flipped"
}

-- furniture.glasslike_set = {}

