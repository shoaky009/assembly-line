local config = require("conf.config")
local sides = require("sides")
for k, v in pairs(config.chestOutput) do
    if v then
        v.transferItem(sides.top, sides.bottom, 64, 1, k)
    end
end
