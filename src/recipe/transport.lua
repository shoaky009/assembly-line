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
    local label = recipeFluid[1]
    local cname = recipeFluid.cname
    --配置与配方不一样或者没有
    if not conf or conf.label ~= cname then
        --set all config the same
        local db = manager.getFluidDatabase()
        local index = manager.getFluidIndexByLabel(label)
        if not index then
            --local craftable = fluidInterface.getCraftables({name = label})
            --print(craftable)
            error("fluid:" .. label .. " no index in db")
        end
        print("set fluid interface slot:" .. inputBusSlot .. " label:" .. label)
        if conf then
            print(conf.label)
        end
        local success = fluidInterface.setFluidInterfaceConfiguration(1, db.address, index)
        if not success then
            error("set fluid interface failed, label:" .. label .. "db index:" .. index)
        end
        --TODO 后面优化这部分 因为transferFluid不能提取指定槽位
        os.sleep(10)
    end

    local amount = recipeFluid.amount
    local success, transferred = fluidInput.transferFluid(fluidSourceSide, config.tankSourceSide, amount)
    if not success or transferred < amount then
        error("transfer fluid failed request amount:" ..
                amount .. " actually transferred " .. transferred)
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
    local sourceSlot = _M.getSlotByLabel(label, amount, chestSourceSide)
    local outputSlot = _M.getAvailableOutputSlot(outputSide)
    local transferred = inputProxy.transferItem(chestSourceSide, outputSide, amount, sourceSlot, outputSlot)
    if transferred < amount then
        error("not enough item:" .. label .. " " .. tostring(amount - transferred) .. " more")
    end
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
    for i, v in pairs(stacks.getAll()) do
        if v and v.label == label then
            if v.size >= amount then
                return i + 1
            else
                print("not enough item:" .. label .. " in source chest skip..")
            end
        end
    end
    print("no item " .. label .. " in source chest")
end

function _M.suckTankFluid(slot, amount)
    local fluidInput = _M.getFluidProxyBySlot(slot)
    local suck = 0
    local failed = 0

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
            failed = failed + 1
            if failed == 5 then
                error("transfer fluid failed request amount" .. amount .. " actually transferred " .. suck)
            end
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
    local sourceSlot = _M.getSlotByLabel(item[1], item.amount, chestOutputSide)
    output.transferItem(0, 1, item.amount, sourceSlot, 1)
end

function _M.getTankFluid(slot)
    local input = _M.getFluidProxyBySlot(slot)
    local fluid = input.getFluidInTank(tankSourceSide)
    return fluid[1]
end

return _M
