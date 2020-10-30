local _M = {}
local recipes = require("recipe.recipes")

function _M.match(sourceItems)
    if sourceItems == nil or not type(sourceItems) == "table" then
        return nil
    end

    local r = recipes.getRecipes()
    local source = {}
    for _, v in ipairs(sourceItems) do
        if v.label then
            local var0 = source[v.label]
            if var0 then
                source[var0] = var0 + 1
            else
                source[var0] = 1
            end
        else
            break
        end
    end

    print(table.concat(source, ","))

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
