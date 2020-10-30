local _M = {}
local R = {}
local ITEM = "item"
local MOLTEN = "molten"
local FLUID = "fluid"
local CELL = "cell"

--TODO add recipes
R["Heavy-DutyAlloyIngotT4"] = {
    nickname = "Heavy-DutyAlloyIngotT4",
    items = {
        { "Heavy-Duty Plate", type = ITEM, amount = 1 },
        { "Compressed Ice Plate", type = ITEM, amount = 3 },
        { "Compressed Ice Plate", type = ITEM, amount = 3 },
        { "gt.metaitem.01.26317.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.26314.name", type = MOLTEN, amount = 2, times = 18}
    }
}

R["Electric Motor (LuV)"] = {
    nickname = "Electric Motor (LuV)",
    items = {
        { "gt.metaitem.01.23399.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.22374.name", type = ITEM, amount = 2 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 1, times = 144},
        { "fluid.lubricant", type = FLUID, amount = 250}
    }
}

function _M.getRecipes()
    return R
end

return _M
