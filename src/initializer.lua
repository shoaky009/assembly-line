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
local input_number = 14

thread.create(function()
    while true do
        local id, address, cp_type = event.pull("component_added")
        if id then
            if cp_type == "transposer" then
                if not ci_flag then
                    config = config:gsub("${ci1}", address)
                    ci_flag = true
                elseif co_count <= input_number then
                    config = config:gsub(string.format("${co%d}", co_count), address)
                    co_count = co_count + 1
                elseif fi_count <= 4 then
                    config = config:gsub(string.format("${fi%d}", fi_count), address)
                    fi_count = fi_count + 1
                end
            end

            if cp_type == "me_interface" then
                if fif_count <= 4 then
                    config = config:gsub(string.format("${fif%d}", fif_count), address)
                    fif_count = fif_count + 1
                end
            end
            print(config)
        end
    end
end)

function Init.start()
    local timer = event.timer(2, Init.check, math.huge)
    print("started!")
    while true do
        local id, _, _x, _y = event.pullMultiple("interrupted")
        if id == "interrupted" then
            print("interrupted cancel timer")
            event.cancel(timer)
            os.exit(0)
        end
    end
end

function Init.check()
    if ci_flag and co_count > input_number and fi_count > 4 and fif_count > 4 then
        local config_file = io.open("./conf/config.lua", "wb")
        print("write:" .. config)
        config_file:write(config)
        io.close(config_file)
        computer.shutdown(true)
    end
end

Init.start()

return Init
