-- Default material registrations

furniture.register("default:wood", furniture.woodlike_set, {"default:wood", "default:stick"}, "furniture_wood.png")
furniture.register("default:steelblock", furniture.woodlike_set, {"default:steelblock", "default:steel_ingot"}, "furniture_steelblock.png")

furniture.register("default:sandstone", furniture.stonelike_set, {"default:sandstone", "stairs:slab_sandstone"}, "default_sandstone_block.png")
furniture.register("default:stone", furniture.stonelike_set, {"default:stone", "stairs:slab_stone"}, "default_stone_block.png")

-- Mod support

if minetest.get_modpath("") then    
end

