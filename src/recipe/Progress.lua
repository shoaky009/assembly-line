local setmetatable = setmetatable
local transport = require("recipe.transport")
local computer = require("computer")

local _M = {}

local mt = {
    __index = _M
}

function _M:new(processItem)
    self.processItem = processItem
    self.items = processItem.items
    --startTime = os.date("%Y-%m-%d %H:%M:%S", os.time()),
    self.startTime = os.time()
    self.endTime = nil
    self.transportCost = nil
    return setmetatable(self, mt)
end

function _M:start()
    print(self.processItem.nickname .. " processing")
    xpcall(function ()
        local fluidSlot = 0
        for _, v in ipairs(self.items) do
            local type = v.type
            if type == nil or type == "item" then
                self:transRecipeItem(v)
            elseif type == "molten" then
                fluidSlot = fluidSlot + 1
                self:transRecipeMolten(v)
            elseif type == "fluid" then
                fluidSlot = fluidSlot + 1
                self:transRecipeFluid(v, fluidSlot)
            elseif type == "cell" then
                fluidSlot = fluidSlot + 1
                self:transRecipeCell(v, fluidSlot)
            end
        end
        self.transportCost = os.time() - self.startTime
        print("all transport cost:" .. self.transportCost .. ", waiting for assembly line crafting")
    end, function ()
        computer.beep(1000, 5)
    end)
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
