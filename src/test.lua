---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Admin.
--- DateTime: 2020/10/26 18:40
---
--local pg = require("recipe/Progress")
--local matcher = require("recipe/matcher")
--local recipes = require("recipe/recipes")
--local reader = require("chest/reader")
--print(pg)
--local pgtest = pg.new("test")
--print(pgtest.item)
--print(pgtest.startTime)

--local recipe = matcher.match(recipes)
--print(recipe)
local _M = {}
function _M.check(slot, amount)
    print("check slot:" .. slot .. " amount:" .. amount)
    if amount then

    end
    error("121")
end

function _M.sleep(n)
    if n > 0 then os.execute("ping -n " .. tonumber(n + 1) .. " localhost > NUL") end
end

local coroutines = {}
for i = 1, 4 do
    local co = coroutine.create(function(slot, amount)
        while true do
            local ok = _M.check(slot, amount)
            if ok then
                return
            end
            coroutine.yield(false)
        end
    end)
    table.insert(coroutines, i, co)
end

for i, v in pairs(coroutines) do
    local status, value = coroutine.resume(v, i, i + 10)
    if value ~= false then
        --coroutines[i] = nil
    end
end

repeat
    ::continue::
    for i, v in pairs(coroutines) do
        local status, value = coroutine.resume(v)
        if value == false or not coroutine.status(v) == "dead" then
            print("sleep")
            goto continue
        else
            coroutines[i] = nil
        end
    end
until true
