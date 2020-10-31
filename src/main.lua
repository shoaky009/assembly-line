local Main = {}
local event = require("event")
local chestReader = require("chest.reader")
local recipeMatcher = require("recipe.matcher")
local progress = require("recipe.Progress")
local computer = require("computer")

function Main.start()
    local timer = event.timer(2, Main.loop, math.huge)
    while true do
        local id, _, x, y = event.pullMultiple("interrupted")
        if id == "interrupted" then
            print("interrupted cancel timer")
            event.cancel(timer)
            break
        end
    end
    os.exit()
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
