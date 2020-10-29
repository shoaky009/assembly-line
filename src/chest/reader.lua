local _M = {}
local config = require("conf.config")
local ci = config.chestInput
local chestSourceSide = ci.chestSourceSide

function _M.hasItem()
    local stacks = ci.proxy.getAllStack(chestSourceSide)
    if not stacks then
        return false, nil
    end
    return stacks.count() > 0, stacks.getAll()
end

return _M
