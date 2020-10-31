local Main = {}
local event = require("event")
local chestReader = require("chest.reader")
local recipeMatcher = require("recipe.matcher")
local progress = require("recipe.Progress")

local timer
local running = false

function Main.start()
    timer = event.timer(2, Main.loop, math.huge)
    running = true
end

function Main.loop()
    local hasItem, all = chestReader.hasItem();
    if hasItem then
        local recipe = recipeMatcher.match(all)
        if not recipe then
            print("not recipe match")
            return
        end
        --start progress
        local pg = progress:new(recipe)
        pg:start()
    end
end

function Main.stop()
    if timer then
        event.cancel(timer)
        running = false
    end
end

if running then
    Main.stop()
else
    Main.start()
end
