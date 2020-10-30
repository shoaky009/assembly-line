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
        { "重型防护板", type = ITEM, amount = 1 },
        { "压缩冰板", type = ITEM, amount = 3 },
        { "压缩冰板", type = MOLTEN, amount = 3 },
        { "铱锇合金螺栓", type = MOLTEN, amount = 3 }
    }
}

function _M.getRecipes()
    return R
end

return _M
