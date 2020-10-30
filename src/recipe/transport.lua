local _M = {}
local config = require("conf.config")
local sides = require("sides")
local manager = require("manager")
local fluidSourceSide = config.fluidSourceSide
local tankSourceSide = config.tankSourceSide

local ci = config.chestInput
local inputProxy = ci.proxy
local chestSourceSide = ci.chestSourceSide
local chestOutputSide = ci.chestOutputSide
local moltenOutputSide = ci.moltenOutputSide

function _M.transFluid(recipeFluid, inputBusSlot)
    local fluidInput = _M.getFluidProxyBySlot(inputBusSlot)
    if not fluidInput then
        error("fluid input " .. tostring(inputBusSlot) .. "not found plz check config")
    end

    local fluidInterface = _M.getFluidInterfaceProxyBySlot(inputBusSlot)
    if not fluidInterface then
        error("fluid interface " .. tostring(inputBusSlot) .. "not found plz check config")
    end

    local conf = fluidInterface.getFluidInterfaceConfiguration(0)
    local name = recipeFluid.name
    if not conf.name == name then
        --set all config the same
        local db = manager.getFluidDatabase()
        local index = manager.getFluidIndexByName(name)
        if not index then
            --TODO auto store 2 db 测试filter的使用
            -- local craftable = fluidInterface.getCraftables({name = recipeFluid.name})
            error("fluid:" .. name .. " not index in db")
        end
        local dbAddress = db.address
        for i = 0, 4 do
            --TODO interface 默认底部 改成可配置side
            fluidInterface.setFluidInterfaceConfiguration(fluidSourceSide, i, dbAddress, index)
        end
    end

    --FIXME 有时候会从第二个slot提取
    local amount = recipeFluid.amount
    local success, transferred = fluidInput.transferFluid(fluidSourceSide, sides.top, amount)
    if not success or transferred < amount then
        error("transfer fluid failed request amount" ..
                tostring(amount) .. " actually transferred " .. tostring(transferred))
    end
end

function _M.trans2melt(recipeItem)
    _M.trans(recipeItem[1], recipeItem.amount, moltenOutputSide)
end

function _M.transItem(recipeItem)
    _M.trans(recipeItem[1], recipeItem.amount, chestOutputSide)
end

function _M.transCell(recipeItem, fluidSlot)
    --cell到熔物品的超级缸输出缓冲
    _M.trans(recipeItem, moltenOutputSide)
end

function _M.trans(item, amount, outputSide)
    local sourceSlot = _M.getSourceSlotByLabel(item, amount)
    local outputSlot = _M.getAvailableOutputSlot(outputSide)
    local transferred = inputProxy.transferItem(chestSourceSide, outputSide, amount, sourceSlot, outputSlot)
    if transferred < amount then
        error("not enough item:" .. item .. " " .. tostring(amount - transferred) .. " more")
    end
end

function _M.getFluidProxyBySlot(inputBusSlot)
    return config["fluidInput" .. tostring(inputBusSlot)]
end

function _M.getFluidInterfaceProxyBySlot(inputBusSlot)
    return config["fluidInterface" .. tostring(inputBusSlot)]
end

function _M.getAvailableOutputSlot(side)
    local size = inputProxy.getInventorySize(side)
    for i = 1, size do
        local stack = inputProxy.getStackInSlot(side, i)
        if stack == nil then
            return i
        end
    end
end

function _M.getSourceSlotByLabel(label, amount)
    local stacks = inputProxy.getAllStacks(chestSourceSide)
    if not stacks then
        error("place check 'config.chestInput.chestSourceSide' no stacks found")
    end
    for i, v in ipairs(stacks.getAll()) do
        if v and v.label == label then
            if v.size >= amount then
                return i + 1
            else
                print("not enough item:" .. label .. " in source chest skip..")
            end
        end
    end
    error("no item " .. label .. "in source chest")
end

function _M.suckTankFluid(slot, amount)
    local fluidInput = _M.getFluidProxyBySlot(slot)
    local success, transferred = fluidInput.transferFluid(tankSourceSide, sides.top, amount)
    if not success or transferred < amount then
        error("transfer fluid failed request amount" ..
                tostring(amount) .. " actually transferred " .. tostring(transferred))
    end
end

return _M
