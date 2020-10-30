local _M = {}
local recipes = require("recipe.recipes")

function _M.match(sourceItems)
    if sourceItems == nil or not type(sourceItems) == "table" then
        return nil
    end

    local r = recipes.getRecipes()
    local source = {}
    for _, v in pairs(sourceItems) do
        local label = v.label
        if label then
            print(label)
            local var0 = source[label]
            if var0 then
                source[label] = var0 + 1
            else
                source[label] = 1
            end
        else
            break
        end
    end

    for _, v in pairs(r) do
        local flag = true
        for __, item in ipairs(v.items) do
            if not source[item[1]] and v.type ~= "fluid" then
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
