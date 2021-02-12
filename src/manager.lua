local _M = {}
local cp = require("component")
local item_utils = require("util.item_utils")
local db = cp.database
local dbCache = {}

function _M.proxy(address)
    return cp.proxy(address)
end

function _M.getFluidDatabase()
    return db
end

function _M.getFluidIndexByIdentity(identity)
    local cache = dbCache[identity]
    if cache then
        return cache
    end

    for i = 1, 81 do
        local data = db.get(i)
        if data and item_utils.itemIdentity(data) == identity then
            --local hash = db.computeHash(i)
            dbCache[identity] = i
            return i
        end
    end
end

return _M
