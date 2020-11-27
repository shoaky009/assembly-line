local Main = {}
local event = require("event")
local chestReader = require("chest.reader")
local recipeMatcher = require("recipe.matcher")
local progress = require("recipe.Progress")
local computer = require("computer")
local config = require("conf.config")
local processing = false

function Main.start()
    local interval = config.chestInput.checkInterval or 2
    local timer = event.timer(interval, Main.loop, math.huge)
    print("started!")
    while true do
        local id, _, x, y = event.pullMultiple("interrupted")
        if id == "interrupted" then
            print("interrupted cancel timer")
            event.cancel(timer)
            break
        end
    end
end

function Main.loop()
    if processing then
        return
    end
    --TODO 改成生产消费模型
    local hasItem, all = chestReader.hasItem();
    if hasItem then
        local recipe = recipeMatcher.match(all)
        if not recipe then
            print(computer.uptime() .. "no recipe match")
            return
        end
        --start progress
        processing = true
        local pg = progress:new(recipe)
        xpcall(pg:start(), function (err)
            local item = recipe.nickname or "unknown item"
            print("an exception occurred while processing the" .. item)
            print("ERROR:", err)
            --beeeeeeee
            os.exit()
        end)
        processing = false
    end
end

Main.start()
