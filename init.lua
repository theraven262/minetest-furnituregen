furniture = {}

local path = minetest.get_modpath("furniture")

minetest.register_node("furniture:glass_full", {
	description = "Blurred Glass",
	tiles = {"furniture_glass_full.png"},
	sunlight_propagates = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
    output = "furniture:glass_full 4",
    recipe = {
        {"default:glass", "default:glass"},
        {"default:glass", "default:glass"},
    },
})

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

furniture.types = {
    {
        name = "chair",
        description = "Chair",
        special_material = false,
        box = {-0.3125, -0.5, -0.375, 0.3125, 0.6875, 0.3125},
        crafting = {0, 0, 1, 0, 1, 1, 0, 2, 2} -- Represent indicies of the materials in the registration call(special materials are appended); 0 is empty
    },
    {
        name = "table_square",
        description = "Square Table",
        special_material = false,
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 0, 0, 1, 1, 1, 2, 0, 2}
    },
    {
        name = "table_round",
        description = "Round Table",
        special_material = false,
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 1, 0, 1, 1, 1, 2, 1, 2}
    },
    {
        name = "cabinet",
        description = "Cabinet",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 4,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
        crafting = {2, 1, 1, 2, 1, 1, 0, 2, 2}
    },
    {
        name = "half_cabinet",
        description = "Half Cabinet",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 2,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -2/16, -0.5, 0.5, 0.5, 0.5},
        crafting = {2, 1, 1, 0, 0, 0, 0, 0, 0}
    },
    {
        name = "wardrobe",
        description = "Wardrobe",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 8,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
        crafting = {0, 2, 1, 0, 2, 1, 0, 2, 2}
    },
    {
        name = "window_glass",
        base = "window",
        description = "Glass Window",
        special_material = "default:glass",
        box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
        crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
    },
    {
        name = "window_obsidian_glass",
        base = "window",
        description = "Obisdian Glass Window",
        special_material = "default:obsidian_glass",
        box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
        crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
    },
    {
        name = "window_blurred_glass",
        base = "window",
        description = "Blurred Glass Window",
        special_material = "furniture:glass_full",
        box = {-0.5, -0.5, -0.125, 0.5, 0.5, 0.125},
        crafting = {0, 1, 0, 2, 3, 2, 0, 1, 0}
    },
    {
        name = "shelf_small",
        description = "Small Empty Shelf",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 2,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -0.5, -0.0625, 0.5, 0.5, 0.5},
        crafting = {0, 2, 2, 0, 1, 1, 0, 2, 2}
    },
    {
        name = "shelf_wide",
        description = "Wide Empty Shelf",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 4,
        activate_sound = furniture.storage_sounds,
        box = {-1.0, -0.5, -0.0625, 1.0, 0.5, 0.5},
        crafting = {2, 2, 2, 1, 1, 1, 2, 2, 2}
    },
    -- Stonelike
    {
        name = "window_glass_thick",
        base = "window_thick",
        description = "Glass Window",
        special_material = "default:glass",
        box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
        crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
    },
    {
        name = "window_obsidian_glass_thick",
        base = "window_thick",
        description = "Obisidan Glass Window",
        special_material = "default:obsidian_glass",
        box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
        crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
    },
    {
        name = "window_blurred_glass_thick",
        base = "window_thick",
        description = "Blurred Glass Window",
        special_material = "furniture:glass_full",
        box = {-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
        crafting = {1, 1, 1, 1, 3, 1, 1, 1, 1}
    },
    {
        name = "chair_thick",
        description = "Chair",
        special_material = false,
        box = {-6/16, -0.5, -5/16, 6/16, 0.5, 7/16},
        crafting = {0, 0, 2, 0, 1, 1, 2, 2, 2}
    },
    {
        name = "table_square_thick",
        description = "Square Table",
        special_material = false,
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 0, 0, 2, 2, 2, 2, 1, 2}
    },
    {
        name = "table_round_thick",
        description = "Round Table",
        special_material = false,
        box = {-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
        crafting = {0, 0, 0, 2, 2, 2, 1, 2, 1}
    },
    {
        name = "shelf_small_thick",
        description = "Small Empty Shelf",
        special_material = false,
        storage = 2,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -0.5, -0.0625, 0.5, 0.5, 0.5},
        crafting = {0, 2, 2, 0, 1, 1, 0, 2, 2}
    },
    {
        name = "shelf_wide_thick",
        description = "Wide Empty Shelf",
        special_material = false,
        storage = 4,
        activate_sound = furniture.storage_sounds,
        box = {-1.0, -0.5, -0.0625, 1.0, 0.5, 0.5},
        crafting = {2, 2, 2, 1, 1, 1, 2, 2, 2}
    },
    {
        name = "cabinet_thick",
        description = "Cabinet",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 4,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
        crafting = {2, 1, 1, 2, 1, 1, 0, 0, 0}
    },
    {
        name = "half_cabinet_thick",
        description = "Half Cabinet",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 2,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -2/16, -0.5, 0.5, 0.5, 0.5},
        crafting = {2, 1, 1, 0, 0, 0, 0, 0, 0}
    },
    {
        name = "wardrobe_thick",
        description = "Wardrobe",
        type = "storage",
        generate_locked = true,
        special_material = false,
        storage = 8,
        activate_sound = furniture.storage_sounds,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
        crafting = {2, 1, 1, 2, 1, 1, 2, 1, 1}
    },
    -- Universal
    {
        name = "mirror",
        description = "Mirror",
        special_material = "furniture:glass_full",
        box = {-4/16, -7/16, 6/16, 4/16, 7/16, 8/16},
        crafting = {2, 2, 2, 2, 3, 2, 2, 2, 2}
    },
    {
        name = "flowerpot",
        description = "Flowerpot",
        special_material = "default:dirt",
        box = {-7/16, -8/16, -7/16, 7/16, 8/16, 7/16},
        crafting = {2, 3, 2, 2, 1, 2, 2, 1, 2}
    },
    {
        name = "door",
        description = "Door",
        type = "active",
        activate_sound = furniture.door_open_sounds,
        deactivate_sound = furniture.door_close_sounds,
        special_material = false,
        generate_locked = true,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, -4/16},
        box_activated = {-0.5, -0.5, -0.5, -4/16, 1.5, 0.5},
        crafting = {1, 1, 0, 1, 1, 2, 1, 1, 0}
    },
    {
        name = "door_flipped",
        description = "Door (flipped)",
        type = "active",
        activate_sound = furniture.door_open_sounds,
        deactivate_sound = furniture.door_close_sounds,
        special_material = false,
        generate_locked = true,
        box = {-0.5, -0.5, -0.5, 0.5, 1.5, -4/16},
        box_activated = {0.5, -0.5, -0.5, 4/16, 1.5, 0.5},
        crafting = {0, 1, 1, 2, 1, 1, 0, 1, 1}
    },
    -- Glasslike
}

furniture.woodlike_set = {
    "chair",
    "table_square",
    "table_round",
    "shelf_small",
    "shelf_wide",
    "window_glass",
    "window_obsidian_glass",
    "window_blurred_glass",
    "cabinet",
    "half_cabinet",
    "wardrobe",
    "mirror",
    "flowerpot",
    "door",
    "door_flipped"
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
    "window_blurred_glass_thick",
    "mirror",
    "flowerpot",
    "door",
    "door_flipped"
}

-- furniture.glasslike_set = {}

furniture.table_contains = function(term, table)
    if (table == nil) then
        return true
    else
        for i=1, #table do
            if (term == table[i]) then
                return true
            end
        end
    end
end

furniture.table_copy = function(table)
    local copy = {}
    for table_key, table_value in pairs(table) do
        copy[table_key] = table_value
    end
    return copy
end

-- minetest_game's chest formspec, now scalable
function furniture.get_storage_formspec(pos, storage)
	local spos = pos.x .. "," .. pos.y .. "," .. pos.z
	local formspec =
		"size[8," .. 5 + storage.. "]" ..
		"list[nodemeta:" .. spos .. ";main;0,0.3;8," .. storage .. ";]" ..
		"list[current_player;main;0," .. 0.85 + storage .. ";8,1;]" ..
		"list[current_player;main;0," .. 2.08 + storage .. ";8,3;8]" ..
		"listring[nodemeta:" .. spos .. ";main]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,0.85 + storage)
	return formspec
end

function furniture.register(base_node, limit, materials, texture)
    for i=1, #furniture.types do
        local fdef = furniture.types[i]
        if (furniture.table_contains(fdef.name, limit)) then
            if (fdef.type == "active") then
            furniture.generate_active(base_node, i, texture)
            furniture.register_crafting(base_node, i, materials)
                if fdef.generate_locked then
                    furniture.register_crafting(base_node, i, materials, true)
                end
            elseif (fdef.type == "storage") then
                furniture.generate_storage(base_node, i, texture)
                furniture.register_crafting(base_node, i, materials)
                if fdef.generate_locked then
                    furniture.register_crafting(base_node, i, materials, true)
                end
            else
                furniture.generate_normal(base_node, i, texture)
                furniture.register_crafting(base_node, i, materials)
            end
        end
    end
end

function furniture.pick_special_textures(base_node, fdefid, tiles, furniture_name)
    local fdef = furniture.types[fdefid]
    local special_definition
    local special_sname
    local special_node
    if (type(fdef.special_material) == "table") then -- In case of multiple materials
        local special_tile
        special_sname = string.match(fdef.special_material[1], ':(.*)') -- Take first node as identifier (for now)
        for j=1, #fdef.special_material do
            special_definition = minetest.registered_nodes[fdef.special_material[j]]
            special_tile = special_definition.tiles[1]
            tiles[j + 1] = special_tile -- Since the first tile is base
        end
        return tiles, furniture_name .. "_" .. special_sname
    else
        special_node = fdef.special_material
        special_definition = minetest.registered_nodes[special_node]
        special_sname = string.match(special_node, ':(.*)')
        tiles[2] = special_definition.tiles[1]
        alpha = special_definition.use_texture_alpha
        return  tiles, furniture_name .. "_" .. special_sname
    end
end

function furniture.generate_normal(base_node, fdefid, texture)
    local base_definition = minetest.registered_nodes[base_node]
    local fdef = furniture.types[fdefid]
    local sname = string.match(base_node, ':(.*)')
    local furniture_name = "furniture:" .. fdef.name .. "_" .. sname
    local furniture_description =  base_definition.description .. " " .. fdef.description
    local furniture_mesh = (fdef.base or fdef.name) .. ".obj"
    local tiles = {texture or base_definition.tiles[1]}
    local alpha = base_definition.use_texture_alpha
    local sounds = base_definition.sounds
    if (fdef.special_material) then          
        tiles, furniture_name = furniture.pick_special_textures(base_node, fdefid, tiles, furniture_name)
        alpha = "blend" -- Just in case that transparency is needed
    end

    local collision_box = {
        type = "fixed",
        fixed = fdef.box,
    }

    minetest.register_node(furniture_name, {
        description = furniture_description,
        tiles = tiles,
        groups = base_definition.groups,
        drawtype = 'mesh',
        mesh = furniture_mesh,
        collision_box = collision_box,
        selection_box = collision_box,
        use_texture_alpha = alpha,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        sounds = sounds,
    })
end

function furniture.generate_storage(base_node, fdefid, texture)
    local fdef = furniture.types[fdefid]
    local base_definition = minetest.registered_nodes[base_node]
    local sname = string.match(base_node, ':(.*)')
    local furniture_name = "furniture:" .. fdef.name .. "_" .. sname
    local furniture_description =  base_definition.description .. " " .. fdef.description
    local furniture_mesh = (fdef.base or fdef.name) .. ".obj"
    local tiles = {texture or base_definition.tiles[1]}
    local alpha = base_definition.use_texture_alpha
    local sounds = base_definition.sounds
    local groups_hidden = furniture.table_copy(base_definition.groups)
    groups_hidden.not_in_creative_inventory = 1

    if (fdef.special_material) then           
        tiles, furniture_name = furniture.pick_special_textures(base_node, fdefid, tiles, furniture_name)
        alpha = "blend" -- Just in case that transparency is needed
    end

    local collision_box = {
        type = "fixed",
        fixed = fdef.box,
    }

    minetest.register_node(furniture_name, {
        description = furniture_description,
        tiles = tiles,
        groups = base_definition.groups,
        drawtype = 'mesh',
        mesh = furniture_mesh,
        collision_box = collision_box,
        selection_box = collision_box,
        use_texture_alpha = alpha,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        sounds = sounds,
        -- Functions adapted from minetest_game's chests
        after_place_node = function(pos, placer)
            local meta = minetest.get_meta(pos)
			meta:set_string("infotext", furniture_description)
			local inv = meta:get_inventory()
			inv:set_size("main", 8*fdef.storage)
        end,
        can_dig = function(pos, player)
            local meta = minetest.get_meta(pos);
            local inv = meta:get_inventory()
            return inv:is_empty("main")
        end,
        on_rightclick = function(pos, node, player)
            minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
            minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
            {pos = pos, max_hear_distance = 10}, true)
        end,
        on_blast = function(pos)
			local drops = {}
			default.get_inventory_drops(pos, "main", drops)
			drops[#drops+1] = furniture_name
			minetest.remove_node(pos)
			return drops
		end,
        on_metadata_inventory_move = function(pos, from_list, from_index,
            to_list, to_index, count, player)
        minetest.log("action", player:get_player_name() ..
            " moves stuff in " .. furniture_description .. " at " .. minetest.pos_to_string(pos))
        end,
        on_metadata_inventory_put = function(pos, listname, index, stack, player)
            minetest.log("action", player:get_player_name() ..
                " moves " .. stack:get_name() ..
                " to " .. furniture_description .. " at " .. minetest.pos_to_string(pos))
        end,
        on_metadata_inventory_take = function(pos, listname, index, stack, player)
            minetest.log("action", player:get_player_name() ..
                " takes " .. stack:get_name() ..
                " from " .. furniture_description .. " at " .. minetest.pos_to_string(pos))
        end
    })
    if fdef.generate_locked == true then
        minetest.register_node(furniture_name .. "_locked", {
            description = "Locked " .. furniture_description,
            tiles = tiles,
            groups = base_definition.groups,
            drawtype = 'mesh',
            mesh = furniture_mesh,
            collision_box = collision_box,
            selection_box = collision_box,
            use_texture_alpha = alpha,
            paramtype = "light",
            paramtype2 = "facedir",
            sunlight_propagates = true,
            sounds = sounds,
            after_place_node = function(pos, placer)
                local meta = minetest.get_meta(pos)
                local playername = placer:get_player_name()
                local inv = meta:get_inventory()
                meta:set_string("owner", playername)
                meta:set_string("infotext", "Locked " .. furniture_description .. "\nOwned by " .. playername .. ".")
                inv:set_size("main", 8*fdef.storage)
            end,
            can_dig = function(pos, player)
                local meta = minetest.get_meta(pos);
                local inv = meta:get_inventory()
                local owner = meta:get_string("owner")
                local playername = player:get_player_name()
                if playername == owner then
                    return inv:is_empty("main")
                else
                    return false
                end
            end,
            on_rightclick = function(pos, node, player)
                local meta = minetest.get_meta(pos)
                local owner = meta:get_string("owner")
                local playername = player:get_player_name()
                if playername == owner then
                    minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
                    minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
                    {pos = pos, max_hear_distance = 10}, true)
                end
            end,
            on_blast = function()
            end,
            on_metadata_inventory_move = function(pos, from_list, from_index,
                to_list, to_index, count, player)
            minetest.log("action", player:get_player_name() ..
                " moves stuff in the storage at " .. minetest.pos_to_string(pos))
            end,
            on_metadata_inventory_put = function(pos, listname, index, stack, player)
                minetest.log("action", player:get_player_name() ..
                    " moves " .. stack:get_name() ..
                    " to the storage at " .. minetest.pos_to_string(pos))
            end,
            on_metadata_inventory_take = function(pos, listname, index, stack, player)
                minetest.log("action", player:get_player_name() ..
                    " takes " .. stack:get_name() ..
                    " from the storage at " .. minetest.pos_to_string(pos))
            end
        })
    end
end

function furniture.generate_active(base_node, fdefid, texture)
    local fdef = furniture.types[fdefid]
    local base_definition = minetest.registered_nodes[base_node]
    local sname = string.match(base_node, ':(.*)')
    local furniture_name = "furniture:" .. fdef.name .. "_" .. sname
    local furniture_description =  base_definition.description .. " " .. fdef.description
    local furniture_mesh = (fdef.base or fdef.name) .. ".obj"
    local tiles = {texture or base_definition.tiles[1]}
    local alpha = base_definition.use_texture_alpha
    local sounds = base_definition.sounds
    local groups_hidden = furniture.table_copy(base_definition.groups)
    groups_hidden.not_in_creative_inventory = 1

    if (fdef.special_material) then           
        tiles, furniture_name = furniture.pick_special_textures(base_node, fdefid, tiles, furniture_name)
        alpha = "blend" -- Just in case that transparency is needed
    end

    local collision_box = {
        type = "fixed",
        fixed = fdef.box,
    }

    local collision_box_activated = {
        type = "fixed",
        fixed = fdef.box_activated,
    }

    minetest.register_node(furniture_name, {
        description = furniture_description,
        tiles = tiles,
        groups = base_definition.groups,
        drawtype = 'mesh',
        mesh = furniture_mesh,
        collision_box = collision_box,
        selection_box = collision_box,
        use_texture_alpha = alpha,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        sounds = sounds,
        on_rightclick = function(pos, node)
            minetest.swap_node(pos, {name = furniture_name .. "_activated", param2 = node.param2})
            minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
            {pos = pos, max_hear_distance = 10}, true)
        end
    })
    minetest.register_node(furniture_name .. "_activated", {
        description = furniture_description,
        tiles = tiles,
        groups = groups_hidden,
        drawtype = 'mesh',
        mesh = (fdef.base or fdef.name) .. "_activated.obj",
        collision_box = collision_box_activated,
        selection_box = collision_box_activated,
        use_texture_alpha = alpha,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        sounds = sounds,
        drop = furniture_name,
        on_rightclick = function(pos, node)
            minetest.swap_node(pos, {name = furniture_name, param2 = node.param2})
            minetest.sound_play(fdef.deactivate_sound[sname] or fdef.deactivate_sound.default,
            {pos = pos, max_hear_distance = 10}, true)
        end
    })
    if fdef.generate_locked == true then
        minetest.register_node(furniture_name .. "_locked", {
            description = "Locked " .. furniture_description,
            tiles = tiles,
            groups = base_definition.groups,
            drawtype = 'mesh',
            mesh = furniture_mesh,
            collision_box = collision_box,
            selection_box = collision_box,
            use_texture_alpha = alpha,
            paramtype = "light",
            paramtype2 = "facedir",
            sunlight_propagates = true,
            sounds = sounds,
            after_place_node = function(pos, placer)
                local meta = minetest.get_meta(pos)
                local playername = placer:get_player_name()
                meta:set_string("owner", playername)
                meta:set_string("infotext", "Locked " .. furniture_description .. "\nOwned by " .. playername .. ".")
            end,
            on_rightclick = function(pos, node, clicker)
                local meta = minetest.get_meta(pos)
                local owner = meta:get_string("owner")
                local playername = clicker:get_player_name()
                if (playername == owner) then
                    minetest.swap_node(pos, {name = furniture_name .. "_locked_activated", param2 = node.param2})
                    minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
                    {pos = pos, max_hear_distance = 10}, true)
                else
                    minetest.chat_send_player(playername, "This " .. furniture_description .. " is owned by " .. owner .. ".")
                end
            end
        })
        minetest.register_node(furniture_name .. "_locked_activated", {
            description = furniture_description,
            tiles = tiles,
            groups = groups_hidden,
            drawtype = 'mesh',
            mesh = (fdef.base or fdef.name) .. "_activated.obj",
            collision_box = collision_box_activated,
            selection_box = collision_box_activated,
            use_texture_alpha = alpha,
            paramtype = "light",
            paramtype2 = "facedir",
            sunlight_propagates = true,
            sounds = sounds,
            drop = furniture_name .. "_locked",
            on_rightclick = function(pos, node, clicker)
                local meta = minetest.get_meta(pos)
                local owner = meta:get_string("owner")
                local playername = clicker:get_player_name()
                if (playername == owner) then
                    minetest.swap_node(pos, {name = furniture_name .. "_locked", param2 = node.param2})
                    minetest.sound_play(fdef.deactivate_sound[sname] or fdef.deactivate_sound.default,
                    {pos = pos, max_hear_distance = 10}, true)
                else
                    minetest.chat_send_player(playername, "This " .. furniture_description .. " is owned by " .. owner .. ".")
                end
            end
        })
    end
end

function furniture.register_crafting(base_node, i, materials_in, locked)
    local materials = furniture.table_copy(materials_in)
    local fdef = furniture.types[i]
    local base_definition = minetest.registered_nodes[base_node]
    local sname = string.match(base_node, ':(.*)')
    local furniture_name = "furniture:" .. fdef.name .. "_" .. sname
    local special_sname
    if (type(fdef.special_material) == "table") then -- Append special material(s) to the end
        for j=1,#fdef.special_material do
            materials[#materials+j] = fdef.special_material[j]
        end
        special_sname = string.match(fdef.special_material[1], ':(.*)') -- Still using the first special as id
        furniture_name = furniture_name .. "_" .. special_sname
    elseif fdef.special_material then
        materials[#materials+1] = fdef.special_material
        special_sname = string.match(fdef.special_material, ':(.*)')
        furniture_name = furniture_name .. "_" .. special_sname
    end
    -- Array to recipe translator
    materials[0] = ""
    if fdef.crafting then
        local recipe = {{}, {}, {}}
        for rw=1,3 do
            for cl=1,3 do
                recipe[rw][cl] = materials[fdef.crafting[((rw)*3+cl)-3]]
            end
        end
        -- Locking recipe modifier
        if locked then
            if recipe[2][1] == "default:steel_ingot" then
                recipe[2][3] = "default:steel_ingot"
            else
                recipe[2][1] = "default:steel_ingot"
            end
            furniture_name = furniture_name .. "_locked"
        end

        minetest.register_craft({
            output = furniture_name,
            recipe = recipe,
        })
    end
end

furniture.register("default:wood", furniture.woodlike_set, {"default:wood", "default:stick"}, "furniture_wood.png")
furniture.register("default:steelblock", furniture.woodlike_set, {"default:steelblock", "default:steel_ingot"}, "furniture_steelblock.png")

furniture.register("default:sandstone", furniture.stonelike_set, {"default:sandstone", "stairs:slab_sandstone"}, "default_sandstone_block.png")
furniture.register("default:stone", furniture.stonelike_set, {"default:stone", "stairs:slab_stone"}, "default_stone_block.png")