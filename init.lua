furniture = {}

furniture.LIGHT_MAX = default.LIGHT_MAX or 16

local path = minetest.get_modpath("furniture")
dofile(path.."/crafting_support.lua")
dofile(path.."/functions.lua")
dofile(path.."/collections.lua")
dofile(path.."/register.lua")