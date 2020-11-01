local setmetatable = setmetatable
local transport = require("recipe.transport")
local computer = require("computer")
local config = require("conf.config")

local _M = {}

local mt = {
    __index = _M
}

function _M:new(processItem)
    self.processItem = processItem
    self.items = processItem.items
    self.suckSlot = {}
    self.startTime = os.time()
    self.endTime = nil
    return setmetatable(self, mt)
end

function _M:start()
    print(self.processItem.nickname .. " processing")
    --xpcall(function ()
        local fluidSlot = 0
        for _, v in pairs(self.items) do
            local type = v.type
            print("trans item:" .. v[1] .. " type:".. type .. " amount:" .. v.amount )
            if type == nil or type == "item" then
                self:transRecipeItem(v)
            elseif type == "molten" then
                fluidSlot = fluidSlot + 1
                self.suckSlot[fluidSlot] = v.amount * v.times
                self:transRecipeMolten(v)
            elseif type == "fluid" then
                fluidSlot = fluidSlot + 1
                self:transRecipeFluid(v, fluidSlot)
            elseif type == "cell" then
                fluidSlot = fluidSlot + 1
                self.suckSlot[fluidSlot] = v.amount * 1000
                self:transRecipeCell(v, fluidSlot)
            end
        end
        self:suckTankFluid()
        self:toItemInputBus()
        --因为在花园时间时间获取不了
        --local cost = os.time() - self.startTime
        --print("all transported cost:" .. cost .. ", waiting for assembly line crafting")
        print("all transported, waiting for assembly line crafting")
        --TODO 如果同时合成多个有问题,在这里检测装配线红石信号 直到熄灭
    --end, function ()
    --    computer.beep(1000, 5)
    --end)
end

function _M:transRecipeItem(recipeItem)
    transport.transItem(recipeItem)
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

function _M:suckTankFluid()
    for slot, amount in pairs(self.suckSlot) do
        transport.suckTankFluid(slot, amount)
    end
end

function _M:toItemInputBus()
    if not config.chestOutputMode then
        return
    end
    for slot, item in pairs(self.processItem.items) do
        transport.transOutput(slot, item)
    end
end

return _M
