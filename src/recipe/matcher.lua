local _M = {}
local recipes = require("recipe.recipes")
local item_utils = require("util.item_utils")

function _M.match(sourceItems)
    if sourceItems == nil or not type(sourceItems) == "table" then
        return nil
    end

    local source = {}
    for _, v in pairs(sourceItems) do
        local name = v.name
        if name then
            local identity = item_utils.itemIdentity(v)
            local var0 = source[identity]
            if var0 then
                source[identity] = var0 + v.size
            else
                source[identity] = v.size
            end
        end
    end

    local r = recipes.getRecipes()
    for _, v in pairs(r) do
        local flag = true
        for __, item in pairs(v.items) do
            local sourceAmount = source[item[1]]
            if item.type ~= "fluid" and (not sourceAmount or item.amount > sourceAmount) then
                flag = false
                break
            end
        end

        if flag then
            print("matched recipe:" .. v.nickname)
            return v
        end
    end
end

return _M
