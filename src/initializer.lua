local Init = {}

local event = require("event")
local thread = require("thread")
local computer = require("computer")
local file = io.open("./conf/config.lua", "r")
local config = file:read("*a")
io.close(file)

local ci_flag = false
local co_count = 1
local fi_count = 1
local fif_count = 1

function Init.start()
    local timer = event.timer(2, Init.check, math.huge)
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

function Init.check()
    if ci_flag and co_count <= 13 and fi_count <= 4 and fif_count <= 4 then
        local config_file = io.open("./conf/config.lua", "w+")
        print("write:" .. config)
        config_file:write(config)
        io.close(config_file)
        computer.shutdown(true)
    end
end

thread.create(function()
    local id, address, cp_type = coroutine.yield()
    print(id)
    if id then
        if cp_type == "transposer" then
            if not ci_flag then
                config = config:gsub("${ci1}", address)
                ci_flag = true
            elseif co_count < 13 then
                config = config:gsub(string.format("${co%d}", co_count), address)
                co_count = co_count + 1
            elseif fi_count < 4 then
                config = config:gsub(string.format("${fi%d}", fi_count), address)
                fi_count = fi_count + 1
            end
        end

        if cp_type == "me_interface" then
            if fif_count < 4 then
                config = config:gsub(string.format("${fif%d}", fif_count), address)
                fif_count = fif_count + 1
            end
        end
        print(config)
    end
    event.pull("component_added")
end)

Init.start()

return Init
