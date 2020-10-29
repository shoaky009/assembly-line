local _M = {}
local recipes = require("recipe.recipes")

function _M.match(sourceItems)
    if sourceItems == nil or not type(sourceItems) == "table" then
        return nil
    end

    local r = recipes.getRecipes()
    local source = {}
    for _, v in ipairs(sourceItems) do
        local var0 = source[v.name]
        if var0 then
            source[v.name] = var0 + 1
        else
            source[v.name] = 1
        end
    end

    for _, v in pairs(r) do
        local items = v.items
        local flag = true
        for __, item in ipairs(items) do
            if not source[item[1]] then
                flag = false
                break
            end
        end

        if flag then
            return v
        end
    end
end

return _M
