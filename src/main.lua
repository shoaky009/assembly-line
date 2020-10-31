local Main = {}
local event = require("event")
local chestReader = require("chest.reader")
local recipeMatcher = require("recipe.matcher")
local progress = require("recipe.Progress")

local timer

function Main.start()
    timer = event.timer(2, Main.loop(), math.huge)
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
        --redo
    end
end

Main.start()
