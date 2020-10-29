local _M = {}
local recipes = require("recipe.recipes")
local config = require("conf.config")

function _M.match(items)
    if items == nil or not type(items) "table" then
        return nil
    end
    --TODO match
    local r = recipes.getRecipes()
    for k, v in pairs(r) do
        if type(v) == "table" then
            local temp = {}
            for i, item in pairs(items) do
            end
        end
    end
end

return _M
