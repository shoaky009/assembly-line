local config = require("conf.config")
local input = config.chestInput.proxy

local stacks = input.getAllStacks(config.chestInput.chestSourceSide)
for k, v in pairs(stacks.getAll()) do
    if v.label then
        print("slot:" .. k .. " label:" .. v.label)
    end
end
