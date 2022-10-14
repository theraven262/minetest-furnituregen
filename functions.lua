-- Helper functions
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

furniture.dictionary_append = function(table, input_table)
    for intable_key, intable_value in pairs(input_table) do
        table[intable_key] = intable_value
    end
end

furniture.table_append = function(table, input_table)
    local table_len = #table
    for i=1,table_len do
        table[table_len + i] = input_table[i]
    end
end

-- Brick to tile conversion, since bricks are much more common in mods
function furniture.brick_to_tile(texture)
    local left_cut = "(" .. texture .. "\\^[sheet\\:2x2\\:1,0)" -- Cut out the bottom brick halves and assemble them as one
    local right_cut = "(" .. texture .. "\\^[sheet\\:2x2\\:1,1)"
    local top_stripe = texture .. "\\^[sheet\\:1x16\\:0,4" -- These mask the leftover shading at the top of the new cuts
    local bottom_stripe = texture .. "\\^[sheet\\:1x16\\:0,6"

    local result = "[combine:16x16:0,0=" .. texture .. ":0,8=" .. right_cut .. ":8,8=" .. left_cut .. ":0,7=" .. top_stripe .. ":0,8=" .. bottom_stripe
    return result
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

-- Furniture registration
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
    local modname = string.match(base_node, '(.*):')
    local esname = modname .. "_" .. sname -- For avoiding name conflicts in the sound tables
    local furniture_name = "furniture:" .. modname .. "_" .. fdef.name .. "_" .. sname -- To avoid potential conflicts in mod support
    if modname == "default" then
        furniture_name = "furniture:" .. fdef.name .. "_" .. sname
        esname = sname
    end
    local furniture_description =  base_definition.description .. " " .. fdef.description
    local furniture_mesh = (fdef.base or fdef.name) .. ".obj"
    local tiles = {texture or base_definition.tiles[1]}
    local alpha = base_definition.use_texture_alpha
    local sounds = base_definition.sounds
    local collision_box = {type = "fixed", fixed = fdef.box}
    local groups = furniture.table_copy(base_definition.groups)
    if fdef.groups then
        furniture.dictionary_append(groups, fdef.groups)
    end

    -- Active versions
    local furniture_mesh_active = (fdef.base or fdef.name) .. "_activated.obj"
    local tiles_active = furniture.table_copy(tiles)
    local collision_box_active = {type = "fixed", fixed = fdef.box_activated}
    local groups_active = furniture.table_copy(groups)
    groups_active.not_in_creative_inventory = 1
    if fdef.groups_active then
        furniture.dictionary_append(groups_active, fdef.groups_active)
    end

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
                minetest.sound_play(fdef.activate_sound[esname] or fdef.activate_sound.default,
                {pos = pos, max_hear_distance = 10}, true)
            end
            on_rightclick_active = function(pos, node)
                minetest.swap_node(pos, {name = furniture_name, param2 = node.param2})
                minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
                minetest.sound_play(fdef.deactivate_sound[esname] or fdef.deactivate_sound.default,
                {pos = pos, max_hear_distance = 10}, true)
            end
        end

        on_rightclick = function(pos, node, player)
            minetest.show_formspec(player:get_player_name(), furniture_name, furniture.get_storage_formspec(pos, fdef.storage))
            minetest.sound_play(fdef.activate_sound[esname] or fdef.activate_sound.default,
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
            minetest.sound_play(fdef.activate_sound[esname] or fdef.activate_sound.default,
            {pos = pos, max_hear_distance = 10}, true)
        end
        on_rightclick_active = function(pos, node)
            minetest.swap_node(pos, {name = furniture_name, param2 = node.param2})
            minetest.sound_play(fdef.deactivate_sound[esname] or fdef.deactivate_sound.default,
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
                    minetest.sound_play(fdef.activate_sound[esname] or fdef.activate_sound.default,
                    {pos = pos, max_hear_distance = 10}, true)
                end
            end
            on_rightclick_active_locked = function(pos, node, player)
                local meta = minetest.get_meta(pos)
                local owner = meta:get_string("owner")
                local playername = player:get_player_name()
                if playername == owner then
                    minetest.swap_node(pos, {name = furniture_name .. "_locked", param2 = node.param2})
                    minetest.sound_play(fdef.deactivate_sound[esname] or fdef.deactivate_sound.default,
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
                        minetest.sound_play(fdef.activate_sound[esname] or fdef.activate_sound.default,
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
                        minetest.sound_play(fdef.deactivate_sound[esname] or fdef.deactivate_sound.default,
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
                    minetest.sound_play(fdef.activate_sound[esname] or fdef.activate_sound.default,
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
        after_place_node = after_place_node,
        on_rightclick = on_rightclick,
        can_dig = can_dig,
        on_blast = on_blast,
        on_metadata_inventory_put = on_metadata_inventory_put,
        on_metadata_inventory_move = on_metadata_inventory_move,
        on_metadata_inventory_take = on_metadata_inventory_take,
        light_source = fdef.light_source or base_definition.light_source,
        visual_scale = fdef.visual_scale or base_definition.visual_scale,
        post_effect_color = fdef.post_effect_color or base_definition.post_effect_color,
        walkable = fdef.walkable or base_definition.walkable,
        pointable = fdef.pointable or base_definition.pointable,
        diggable = fdef.diggable or base_definition.diggable,
        climbable = fdef.climbable or base_definition.climbable,
        move_resistance = fdef.move_resistance or base_definition.move_resistance,
        buildable_to = fdef.buildable_to or base_definition.buildable_to,
        floodable = fdef.floodable or base_definition.floodable,
        drowning = fdef.drowning or base_definition.drowning,
        damage_per_second = fdef.damage_per_second or base_definition.damage_per_second
    })

    if fdef.active then
        minetest.register_node(furniture_name .. "_activated", {
            description = furniture_description,
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
            drops = furniture_name,
            after_place_node = after_place_node,
            on_rightclick = on_rightclick_active,
            can_dig = can_dig,
            on_blast = on_blast,
            on_metadata_inventory_put = on_metadata_inventory_put,
            on_metadata_inventory_move = on_metadata_inventory_move,
            on_metadata_inventory_take = on_metadata_inventory_take,
            light_source = fdef.light_source_active or base_definition.light_source,
            visual_scale = fdef.visual_scale_active or base_definition.visual_scale,
            post_effect_color = fdef.post_effect_color_active or base_definition.post_effect_color,
            walkable = fdef.walkable_active or base_definition.walkable,
            pointable = fdef.pointable_active or base_definition.pointable,
            diggable = fdef.diggable_active or base_definition.diggable,
            climbable = fdef.climbable_active or base_definition.climbable,
            move_resistance = fdef.move_resistance_active or base_definition.move_resistance,
            buildable_to = fdef.buildable_to_active or base_definition.buildable_to,
            floodable = fdef.floodable_active or base_definition.floodable,
            drowning = fdef.drowning_active or base_definition.drowning,
            damage_per_second = fdef.damage_per_second_active or base_definition.damage_per_second
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
            on_metadata_inventory_take = on_metadata_inventory_take,
            light_source = fdef.light_source or base_definition.light_source,
            visual_scale = fdef.visual_scale or base_definition.visual_scale,
            post_effect_color = fdef.post_effect_color or base_definition.post_effect_color,
            walkable = fdef.walkable or base_definition.walkable,
            pointable = fdef.pointable or base_definition.pointable,
            diggable = fdef.diggable or base_definition.diggable,
            climbable = fdef.climbable or base_definition.climbable,
            move_resistance = fdef.move_resistance or base_definition.move_resistance,
            buildable_to = fdef.buildable_to or base_definition.buildable_to,
            floodable = fdef.floodable or base_definition.floodable,
            drowning = fdef.drowning or base_definition.drowning,
            damage_per_second = fdef.damage_per_second or base_definition.damage_per_second
        })
        if fdef.active then
            minetest.register_node(furniture_name .. "_activated_locked", {
                description = "Locked " .. furniture_description,
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
                on_metadata_inventory_take = on_metadata_inventory_take,
                light_source = fdef.light_source_active or base_definition.light_source,
                visual_scale = fdef.visual_scale_active or base_definition.visual_scale,
                post_effect_color = fdef.post_effect_color_active or base_definition.post_effect_color,
                walkable = fdef.walkable_active or base_definition.walkable,
                pointable = fdef.pointable_active or base_definition.pointable,
                diggable = fdef.diggable_active or base_definition.diggable,
                climbable = fdef.climbable_active or base_definition.climbable,
                move_resistance = fdef.move_resistance_active or base_definition.move_resistance,
                buildable_to = fdef.buildable_to_active or base_definition.buildable_to,
                floodable = fdef.floodable_active or base_definition.floodable,
                drowning = fdef.drowning_active or base_definition.drowning,
                damage_per_second = fdef.damage_per_second_active or base_definition.damage_per_second
            })
        end
    end
end

-- Furniture crafting
function furniture.register_crafting(base_node, i, materials_in, locked)
    local materials = furniture.table_copy(materials_in)
    local fdef = furniture.types[i]
    local base_definition = minetest.registered_nodes[base_node]
    local sname = string.match(base_node, ':(.*)')
    local modname = string.match(base_node, '(.*):')
    local furniture_name = "furniture:" .. modname .. "_" .. fdef.name .. "_" .. sname
    if modname == "default" then
        furniture_name = "furniture:" .. fdef.name .. "_" .. sname
    end
    if locked then
        minetest.register_craft({
            type = "shapeless",
            output = furniture_name .. "_locked",
            recipe = {"furniture:lock", furniture_name},
        })
    else
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
            minetest.register_craft({
                output = furniture_name,
                recipe = recipe,
            })
        end
    end
end
