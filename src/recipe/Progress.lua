local setmetatable = setmetatable
local transport = require("recipe.transport")


local _M = {}

local mt = {
    __index = _M
}

function _M:new(assemblyItem)
    local self = {
        item = assemblyItem,
        startTime = os.date("%Y-%m-%d %H:%M:%S", os.time()),
        endTime = nil
    }
    return setmetatable(self, mt)
end

function _M:transRecipeItem(recipeItem)
    transport.transItem(recipeItem.name, recipeItem.amount)
end

function _M:transRecipeMolten(recipeItem)
    transport.trans2melt(recipeItem)
end

function _M:transRecipeFluid(recipeFluid, fluidSlot)
    transport.transFluid(recipeFluid, fluidSlot)
end

function _M:transRecipeCell(recipeItem, fluidSlot)
    transport.transCell(recipeItem, fluidSlot)
end

return _M
