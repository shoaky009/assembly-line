local _M = {}

function _M.itemIdentity(item)
    local identity = item.name
    if item.damage then
        identity = identity .. ":" .. tostring(math.floor(item.damage))
    end
    return identity
end

return _M
