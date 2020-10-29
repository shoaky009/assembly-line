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

function _M.getFluidIndexByName(name)
    local cache = dbCache[name]
    if cache then
        return cache
    end

    for i = 1, 81 do
        local data = db.get(i)
        if data and data.name == name then
            --local hash = db.computeHash(i)
            dbCache[name] = i
            return i
        end
    end
end

return _M
