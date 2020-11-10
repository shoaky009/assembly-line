local Main = {}
local event = require("event")
local chestReader = require("chest.reader")
local recipeMatcher = require("recipe.matcher")
local progress = require("recipe.Progress")
local computer = require("computer")
local config = require("conf.config")

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
    local hasItem, all = chestReader.hasItem();
    if hasItem then
        local recipe = recipeMatcher.match(all)
        if not recipe then
            print(computer.uptime() .. "no recipe match")
            return
        end
        --start progress
        local pg = progress:new(recipe)
        pg:start()
    end
end

Main.start()
