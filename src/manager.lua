local _M = {}
local cp = require("component")
local db = cp.database
local dbCache = {}

function _M.proxy(address)
    return cp.proxy(address)
end

function _M.getFluidDatabase()
    return db
end

function _M.getFluidIndexByLabel(label)
    local cache = dbCache[label]
    if cache then
        return cache
    end

    for i = 1, 81 do
        local data = db.get(i)
        if data and data.label == label then
            --local hash = db.computeHash(i)
            dbCache[label] = i
            return i
        end
    end
end

return _M
