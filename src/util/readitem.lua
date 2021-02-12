local config = require("conf.config")
local shell = require("shell")
local args, _ = shell.parse(...)

local _M = {}
local input = config.chestInput.proxy
local inputSide = config.chestInput.chestSourceSide

local function readData(data)
    if type(data) == "table" then
        for k, v in pairs(data) do
            print(k .. ":" .. tostring(v))
        end
    else
        print(data)
    end

end

function _M.default()
    local stacks = input.getAllStacks(inputSide)
    for k, v in pairs(stacks.getAll()) do
        if v.name then
            local identity = v.name
            if v.damage then
                identity = identity .. ":" .. v.damage
            end
            print("slot:" .. k .. " identity ---> " .. identity)
        end
    end
end

function _M.allInfo()
    local item = input.getStackInSlot(inputSide, 1)
    if item then
        readData(item)
    end
end

function _M.readFluid()
    local fluid = input.getFluidInTank(1, 1)
    if fluid then
        readData(fluid)
    end
end

local functionName;
if type(args) == "table" then
    functionName = args[1] or "default"
end

if _M[functionName] then
    _M[functionName]()
end

return _M
