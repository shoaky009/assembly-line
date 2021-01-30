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

    local conf = fluidInterface.getFluidInterfaceConfiguration(1)
    local cellLabel = recipeFluid[1]
    local fluidLabel = recipeFluid.cname
    --配置与配方不一样或者没有
    if not conf or conf.label ~= fluidLabel then
        --set all config the same
        local db = manager.getFluidDatabase()
        local index = manager.getFluidIndexByLabel(cellLabel)
        if not index then
            --local craftable = fluidInterface.getCraftables({name = label})
            --print(craftable)
            error("fluid:" .. cellLabel .. " not in the db")
        end
        print("set fluid interface slot:" .. inputBusSlot .. " label:" .. cellLabel)
        if conf then
            print(conf.label)
        end
        local success = fluidInterface.setFluidInterfaceConfiguration(1, db.address, index)
        if not success then
            error("set fluid interface failed, label:" .. cellLabel .. "db index:" .. index)
        end

        while true do
            local fluid = fluidInput.getFluidInTank(0, 1)
            if fluid and fluid.label == fluidLabel then
                break
            end
            if fluid and fluid.label then
                print("fluid interface:".. inputBusSlot ..", current fluid is " .. fluid.label .. ", need:" .. fluidLabel)
            else
                print("fluid interface:".. inputBusSlot ..", not enough fluid, need:" .. fluidLabel)
            end
            os.sleep(0.8)
        end
    end

    local amount = recipeFluid.amount
    while true do
        local _, transferred = fluidInput.transferFluid(fluidSourceSide, sides.top, amount)
        amount = amount - transferred
        if amount <= 0 then
            break
        end
        print("slot " .. inputBusSlot .." not enough fluid:" .. fluidLabel)
        os.sleep(2)
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
    _M.trans(recipeItem[1], recipeItem.amount, moltenOutputSide)
end

function _M.trans(label, amount, outputSide)
    local sourceSlots = _M.getSlotByLabel(label, amount, chestSourceSide)
    local outputSlot = _M.getAvailableOutputSlot(outputSide)
    for _, v in ipairs(sourceSlots) do
        local transferred = inputProxy.transferItem(chestSourceSide, outputSide, v.size, v.slot, outputSlot)
    end
    --if transferred < amount then
    --    error("not enough item:" .. label .. " " .. tostring(amount - transferred) .. " more")
    --end
end

function _M.getFluidProxyBySlot(inputBusSlot)
    return config.fluidInput[inputBusSlot]
end

function _M.getFluidInterfaceProxyBySlot(inputBusSlot)
    return config.fluidInterface[inputBusSlot]
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

function _M.getSlotByLabel(label, amount, side)
    local stacks = inputProxy.getAllStacks(side)
    if not stacks then
        error("place check 'config.chestInput.chestSourceSide' no stacks found")
    end

    local slots = {}
    for i, v in pairs(stacks.getAll()) do
        if v and v.label == label then
            local item = { slot = i + 1}
            table.insert(slots, item)
            if v.size >= amount then
                item.size = amount
                return slots
            else
                item.size = v.size
                amount = amount - v.size
            end
        end
    end
    return slots
end

function _M.suckTankFluid(slot, amount)
    local fluidInput = _M.getFluidProxyBySlot(slot)
    local suck = 0
    --需要优化,后续有需求再调整
    while suck < amount do
        local success, transferred = fluidInput.transferFluid(tankSourceSide, sides.top, amount)
        if transferred then
            suck = suck + transferred
        end
        if suck == amount then
            break
        end
        if not success or transferred < amount then
            print("transfer fluid failed request amount" .. amount .. " actually transferred " .. suck)
        end
        --也许有些提取比较久2秒不够
        os.sleep(2)
    end
end

function _M.transOutput(slot, item)
    local output = config.chestOutput[slot]
    if not output then
        error("item output " .. tostring(slot) .. "not found plz check config or disable config.chestOutputMode")
    end

    while true do
        local stack = output.getStackInSlot(1, 1)
        if not stack or (stack.label == item[1] and stack.size + item.amount <= 64) then
            break
        end
        print("waiting for available slot, recipe:" .. item[1] .. " need:" .. item.amount ..
                " ,slotItem:" .. stack.label .. " size:" .. stack.size)
        os.sleep(1)
    end
    --默认底部和顶部
    local sourceSlots = _M.getSlotByLabel(item[1], item.amount, chestOutputSide)
    for _, v in ipairs(sourceSlots) do
        output.transferItem(0, 1, v.size, v.slot, 1)
    end
end

function _M.getTankFluid(slot)
    local input = _M.getFluidProxyBySlot(slot)
    local fluid = input.getFluidInTank(tankSourceSide)
    return fluid[1]
end

return _M
