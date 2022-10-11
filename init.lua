furniture = {}

local path = minetest.get_modpath("furniture")

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
        box = {-0.3125, -0.5, -0.375, 0.3125, 0.6875, 0.3125},
        crafting = {0, 0, 1, 0, 1, 1, 0, 2, 2} -- Represent indicies of the materials in the registration call(special materials are appended); 0 is empty
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
        -- base
        description = "Door",
        active = true,
        -- description_activated
        -- special_materials
        -- special_textures
        -- special_textures_activated
        -- light_source
        -- light_source_activated
        -- storage
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
        if furniture.table_contains(fdef.name, limit) then
            furniture.assemble_node(base_node, i, materials, texture)
            furniture.register_crafting(base_node, i, materials, false)
            if fdef.generate_locked then
                furniture.register_crafting(base_node, i, materials, true)
            end
        end
    end
end

function furniture.assemble_node(base_node, tablep, materials, texture)
    local fdef = furniture.types[tablep]
    local base_definition = minetest.registered_nodes[base_node]
    local sname = string.match(base_node, ':(.*)')
    local furniture_name = "furniture:" .. fdef.name .. "_" .. sname
    local furniture_description =  base_definition.description .. " " .. fdef.description
    local furniture_mesh = (fdef.base or fdef.name) .. ".obj"
    local tiles = {texture or base_definition.tiles[1]}
    local alpha = base_definition.use_texture_alpha
    local sounds = base_definition.sounds
    local collision_box = {type = "fixed", fixed = fdef.box}
    local groups = furniture.table_copy(base_definition.groups)

    -- Active versions
    local furniture_description_active = furniture_description
    if (fdef.description_active) then
        furniture_description_active = base_definition.description .. " " .. fdef.description_active
    end
    local furniture_mesh_active = (fdef.base or fdef.name) .. "_activated.obj"
    local tiles_active = furniture.table_copy(tiles)
    local collision_box_active = {type = "fixed", fixed = fdef.box_activated}       
    local groups_active = furniture.table_copy(groups) 
    groups_active.not_in_creative_inventory = 1

    -- Textures
    if (type(fdef.special_textures) == "table") then
        for i=1, #fdef.special_textures do
            tiles[i+1] = fdef.special_textures[i]
        end
        alpha = "blend" -- Since we can't figure if any special texture has transparency
    elseif (type(fdef.special_textures) == "string") then
        tiles[2] = fdef.special_textures
        alpha = "blend"
    end

    if fdef.active then
        if (type(fdef.special_textures_active) == "table") then
            for i=1, #fdef.special_textures_active do
                tiles_active[i+1] = fdef.special_textures_active[i]
            end
            alpha = "blend"
        elseif (type(fdef.special_textures_active) == "string") then
            tiles_active[2] = fdef.special_textures_active
            alpha = "blend"
        end
    end

    -- Declare function storage
    local after_place_node
    local on_rightclick
    local can_dig
    local on_blast
    local on_metadata_inventory_put
    local on_metadata_inventory_move
    local on_metadata_inventory_take

    local on_rightclick_active

    local after_place_node_locked
    local on_rightclick_locked
    local can_dig_locked
    local on_blast_locked

    local on_rightclick_active_locked

    -- Fill functions
    if (fdef.storage) then

        after_place_node = function(pos, placer)
            local meta = minetest.get_meta(pos)
			meta:set_string("infotext", furniture_description)
			local inv = meta:get_inventory()
			inv:set_size("main", 8*fdef.storage)
        end

        if fdef.active then
            on_rightclick = function(pos, node)
                minetest.swap_node(pos, {name = furniture_name .. "_activated", param2 = node.param2})
                minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
                minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
                {pos = pos, max_hear_distance = 10}, true)
            end
            on_rightclick_active = function(pos, node)
                minetest.swap_node(pos, {name = furniture_name, param2 = node.param2})
                minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
                minetest.sound_play(fdef.deactivate_sound[sname] or fdef.deactivate_sound.default,
                {pos = pos, max_hear_distance = 10}, true)
            end
        end

        on_rightclick = function(pos, node, player)
            minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
            minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
            {pos = pos, max_hear_distance = 10}, true)
        end

        can_dig = function(pos, player)
            local meta = minetest.get_meta(pos);
            local inv = meta:get_inventory()
            return inv:is_empty("main")
        end

        on_blast = function(pos)
			local drops = {}
			default.get_inventory_drops(pos, "main", drops)
			drops[#drops+1] = furniture_name
			minetest.remove_node(pos)
			return drops
		end

        on_metadata_inventory_move = function(pos, from_list, from_index,
            to_list, to_index, count, player)
        minetest.log("action", player:get_player_name() ..
            " moves stuff into " .. furniture_description .. " at " .. minetest.pos_to_string(pos))
        end
        on_metadata_inventory_put = function(pos, listname, index, stack, player)
            minetest.log("action", player:get_player_name() ..
                " moves " .. stack:get_name() ..
                " to " .. furniture_description .. " at " .. minetest.pos_to_string(pos))
        end
        on_metadata_inventory_take = function(pos, listname, index, stack, player)
            minetest.log("action", player:get_player_name() ..
                " takes " .. stack:get_name() ..
                " from " .. furniture_description .. " at " .. minetest.pos_to_string(pos))
        end
    end

    if fdef.active then
        on_rightclick = function(pos, node)
            minetest.swap_node(pos, {name = furniture_name .. "_activated", param2 = node.param2})
            minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
            {pos = pos, max_hear_distance = 10}, true)
        end
        on_rightclick_active = function(pos, node)
            minetest.swap_node(pos, {name = furniture_name, param2 = node.param2})
            minetest.sound_play(fdef.deactivate_sound[sname] or fdef.deactivate_sound.default,
            {pos = pos, max_hear_distance = 10}, true)
        end
    end

    if fdef.generate_locked then
        if fdef.active then
            after_place_node_locked = function(pos, placer)
                local meta = minetest.get_meta(pos)
                local playername = placer:get_player_name()
                meta:set_string("owner", playername)
                meta:set_string("infotext", "Locked " .. furniture_description .. "\nOwned by " .. playername .. ".")
            end
            on_rightclick_locked = function(pos, node, player)
                local meta = minetest.get_meta(pos)
                local owner = meta:get_string("owner")
                local playername = player:get_player_name()
                if playername == owner then
                    minetest.swap_node(pos, {name = furniture_name .. "_activated_locked", param2 = node.param2})
                    minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
                    {pos = pos, max_hear_distance = 10}, true)
                end
            end
            on_rightclick_active_locked = function(pos, node, player)
                local meta = minetest.get_meta(pos)
                local owner = meta:get_string("owner")
                local playername = player:get_player_name()
                if playername == owner then
                    minetest.swap_node(pos, {name = furniture_name .. "_locked", param2 = node.param2})
                    minetest.sound_play(fdef.deactivate_sound[sname] or fdef.deactivate_sound.default,
                    {pos = pos, max_hear_distance = 10}, true)
                end
            end
        end
        if (fdef.storage) then
            after_place_node_locked = function(pos, placer)
                local meta = minetest.get_meta(pos)
                local playername = placer:get_player_name()
                local inv = meta:get_inventory()
                meta:set_string("owner", playername)
                meta:set_string("infotext", "Locked " .. furniture_description .. "\nOwned by " .. playername .. ".")
                inv:set_size("main", 8*fdef.storage)
            end
            if fdef.active then
                on_rightclick_locked = function(pos, node, player)
                    local meta = minetest.get_meta(pos)
                    local owner = meta:get_string("owner")
                    local playername = player:get_player_name()
                    if playername == owner then
                        minetest.swap_node(pos, {name = furniture_name .. "_activated_locked", param2 = node.param2})
                        minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
                        minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
                        {pos = pos, max_hear_distance = 10}, true)
                    end
                end
                on_rightclick_active_locked = function(pos, node, player)
                    local meta = minetest.get_meta(pos)
                    local owner = meta:get_string("owner")
                    local playername = player:get_player_name()
                    if playername == owner then
                        minetest.swap_node(pos, {name = furniture_name .. "_locked", param2 = node.param2})
                        minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
                        minetest.sound_play(fdef.deactivate_sound[sname] or fdef.deactivate_sound.default,
                        {pos = pos, max_hear_distance = 10}, true)
                    end
                end
            end    
            on_rightclick_locked = function(pos, node, player)
                local meta = minetest.get_meta(pos)
                local owner = meta:get_string("owner")
                local playername = player:get_player_name()
                if playername == owner then
                    minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
                    minetest.sound_play(fdef.activate_sound[sname] or fdef.activate_sound.default,
                    {pos = pos, max_hear_distance = 10}, true)
                end
            end
            can_dig_locked = function(pos, player)
                local meta = minetest.get_meta(pos);
                local inv = meta:get_inventory()
                local owner = meta:get_string("owner")
                local playername = player:get_player_name()
                if playername == owner then
                    return inv:is_empty("main")
                else
                    return false
                end
            end    
            on_blast_locked = function()               
            end
        end
    end

    -- Assemble node(s)

    minetest.register_node(furniture_name, {
        description = furniture_description,
        tiles = tiles,
        groups = groups,
        drawtype = 'mesh',
        mesh = furniture_mesh,
        collision_box = collision_box,
        selection_box = collision_box,
        use_texture_alpha = alpha,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        sounds = sounds,
        light_source = fdef.light_source or base_definition.light_source,
        after_place_node = after_place_node,
        on_rightclick = on_rightclick,
        can_dig = can_dig,
        on_blast = on_blast,
        on_metadata_inventory_put = on_metadata_inventory_put,
        on_metadata_inventory_move = on_metadata_inventory_move,
        on_metadata_inventory_take = on_metadata_inventory_take
    })

    if fdef.active then
        minetest.register_node(furniture_name .. "_activated", {
            description = furniture_description_active,
            tiles = tiles_active,
            groups = groups_active,
            drawtype = 'mesh',
            mesh = furniture_mesh_active,
            collision_box = collision_box_active,
            selection_box = collision_box_active,
            use_texture_alpha = alpha,
            paramtype = "light",
            paramtype2 = "facedir",
            sunlight_propagates = true,
            sounds = sounds,
            light_source = fdef.light_source_active or base_definition.light_source,
            drops = furniture_name,
            after_place_node = after_place_node,
            on_rightclick = on_rightclick_active,
            can_dig = can_dig,
            on_blast = on_blast,
            on_metadata_inventory_put = on_metadata_inventory_put,
            on_metadata_inventory_move = on_metadata_inventory_move,
            on_metadata_inventory_take = on_metadata_inventory_take
        })
    end

    if fdef.generate_locked then
        minetest.register_node(furniture_name .. "_locked", {
            description = "Locked " .. furniture_description,
            tiles = tiles,
            groups = groups,
            drawtype = 'mesh',
            mesh = furniture_mesh,
            collision_box = collision_box,
            selection_box = collision_box,
            use_texture_alpha = alpha,
            paramtype = "light",
            paramtype2 = "facedir",
            sunlight_propagates = true,
            sounds = sounds,
            light_source = fdef.light_source or base_definition.light_source,
            after_place_node = after_place_node_locked,
            on_rightclick = on_rightclick_locked,
            can_dig = can_dig_locked,
            on_blast = on_blast_locked,
            on_metadata_inventory_put = on_metadata_inventory_put,
            on_metadata_inventory_move = on_metadata_inventory_move,
            on_metadata_inventory_take = on_metadata_inventory_take
        })
        if fdef.active then
            minetest.register_node(furniture_name .. "_activated_locked", {
                description = "Locked " .. furniture_description_active,
                tiles = tiles_active,
                groups = groups_active,
                drawtype = 'mesh',
                mesh = furniture_mesh_active,
                collision_box = collision_box_active,
                selection_box = collision_box_active,
                use_texture_alpha = alpha,
                paramtype = "light",
                paramtype2 = "facedir",
                sunlight_propagates = true,
                sounds = sounds,
                light_source = fdef.light_source_active or base_definition.light_source,
                drops = furniture_name,
                after_place_node = after_place_node_locked,
                on_rightclick = on_rightclick_active_locked,
                can_dig = can_dig_locked,
                on_blast = on_blast_locked,
                on_metadata_inventory_put = on_metadata_inventory_put,
                on_metadata_inventory_move = on_metadata_inventory_move,
                on_metadata_inventory_take = on_metadata_inventory_take
            })
        end    
    end
end

function furniture.register_crafting(base_node, i, materials_in, locked)
    local materials = furniture.table_copy(materials_in)
    local fdef = furniture.types[i]
    local base_definition = minetest.registered_nodes[base_node]
    local sname = string.match(base_node, ':(.*)')
    local furniture_name = "furniture:" .. fdef.name .. "_" .. sname
    local special_sname
    if (type(fdef.special_materials) == "table") then -- Append special material(s) to the end
        for j=1,#fdef.special_materials do
            materials[#materials+j] = fdef.special_materials[j]
        end
    elseif (type(fdef.special_materials) == "string") then
        materials[#materials+1] = fdef.special_materials
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