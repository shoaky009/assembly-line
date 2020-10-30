local _M = {}
local R = {}
local ITEM = "item"
local MOLTEN = "molten"
local FLUID = "fluid"
local CELL = "cell"

--TODO add recipes
R["gregtech:meta_item_1.64.32607"] = {
    nickname = "Electric Motor (ZPM)",
    items = {
        { "Heavy-Duty Plate", type = ITEM, amount = 1 },
        { "Compressed Ice Plate", type = ITEM, amount = 3 },
        { "Compressed Ice Plate", type = ITEM, amount = 3 },
        { "gt.metaitem.01.26317.name", type = ITEM, amount = 4 }
    }
}

function _M.getRecipes()
    return R
end

return _M
