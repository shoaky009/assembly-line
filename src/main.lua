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
        local fluidSlot = 0
        for _, v in ipairs(pg.items) do
            local type = v.type
            if type == nil or type == "item" then
                pg:transRecipeItem(v)
            elseif type == "molten" then
                fluidSlot = fluidSlot + 1
                pg:transRecipeMolten(v)
            elseif type == "fluid" then
                fluidSlot = fluidSlot + 1
                pg:transRecipeFluid(v, fluidSlot)
            elseif type == "cell" then
                fluidSlot = fluidSlot + 1
                pg:transRecipeCell(v, fluidSlot)
            end
        end
        print("all transport success waiting for assembly line crafting")
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
