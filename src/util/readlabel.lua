local config = require("conf.config")
local shell = require("shell")
local args, _ = shell.parse(...)

local _M = {}
local input = config.chestInput.proxy
local inputSide = config.chestInput.chestSourceSide

function _M.default()
    local stacks = input.getAllStacks(inputSide)
    for k, v in pairs(stacks.getAll()) do
        if v.label then
            print("slot:" .. k .. " label:" .. v.label)
        end
    end
end

function _M.allInfo()
    local item = input.getStackInSlot(inputSide, 1)
    if item then
        for k, v in pairs(item) do
            print(k .. ":" .. tostring(v))
        end
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
