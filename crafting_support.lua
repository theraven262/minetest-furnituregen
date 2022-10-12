-- Craftitems
minetest.register_craftitem("furniture:lock", {
	description = "Locking Mechanism",
	inventory_image = "furniture_lock.png",
})
-- Crafting
minetest.register_craft({
	output = "furniture:lock",
	recipe = {
        {"", "default:steel_ingot", ""},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
	}
})
-- Nodes
