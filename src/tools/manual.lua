local config = require("conf.config")
for k, v in pairs(config.chestOutput) do
    if v then
        v.transferItem(0, 1, 64, k, 1)
    end
end
