local Main = {}
local event = require("event")
local chestReader = require("chest.reader")
local recipeMatcher = require("recipe.matcher")
local progress = require("recipe.Progress")
local computer = require("computer")
local config = require("conf.config")
local rs = require("component").redstone

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
    if rs.getInput(3) > 0 then
        print("processing item...")
        return
    end
    local hasItem, all = chestReader.hasItem();
    if hasItem then
        local recipe = recipeMatcher.match(all)
        if not recipe then
            print(computer.uptime() .. "no recipe match")
            return
        end
        local pg = progress:new(recipe)
        xpcall(pg:start(), Main.error(recipe))
    end
end

function Main.error(recipe)
    local item = recipe.nickname or "unknown item"
    print("an exception occurred while processing the " .. item)
    debug.traceback()
    os.exit()
end

Main.start()
