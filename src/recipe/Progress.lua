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
    local fluidSlot = 0
    for _, v in pairs(self.items) do
        local type = v.type
        print("trans item:" .. v[1] .. " type:" .. type .. " amount:" .. v.amount)
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
    self:waiting4Fluid(fluidSlot)
    self:suckTankFluid()
    self:toItemInputBus()
    --因为在花园时间时间获取不了
    --local cost = os.time() - self.startTime
    --print("all transported cost:" .. cost .. ", waiting for assembly line crafting")
    print("all transported, waiting for assembly line crafting")
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
    local slot = 0
    for _, item in pairs(self.items) do
        local type = item.type
        if type == "item" or type == nil then
            slot = slot + 1
            transport.transOutput(slot, item)
        end
    end
end

function _M:waiting4Fluid(maxSlot)
    local coroutines = {}
    print("maxSlot:" .. maxSlot)
    for i = 1, maxSlot do
        local co = coroutine.create(function (slot, amount)
            while true do
                local current = transport.getTankFluid(slot).amount
                print("slot:" .. slot .. " need:" .. amount .. " current:" .. current)
                if current == amount then
                    return true
                end
                coroutine.yield(false)
            end
        end)
        table.insert(coroutines, i, co)
    end

    repeat
        ::continue::
        for i, v in pairs(coroutines) do
            local status, value = coroutine.resume(v, i, self.suckSlot[i])
            if value == false or not coroutine.status(v) == "dead" then
                os.sleep(0.2)
                goto continue
            else
                coroutines[i] = nil
                print("slot:" .. i .. " done")
            end
        end
    until true
end

return _M
