local Main = {}
local event = require("event")
local chestReader = require("chest.reader")
local recipeMatcher = require("matcher")
local progress = require("recipe.Progress")
local thread = require("thread")

--local eventHandlers = setmetatable(
--        { ["has_item"] = recipeMatcher.match() },
--        { __index = function()
--            return Main.unknownEvent
--        end })
local running = true
Main.start()

function Main.start()
    --TODO timer
    --local timer = event.timer(2, chestReader.hasItem(), 1)
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

function Main.unknownEvent()
    -- do nothing if the event wasn't relevant
end

--function Main.handleEvent(eventID, ...)
--    if (eventID) then
--        eventHandlers[eventID](...)
--    end
--end
