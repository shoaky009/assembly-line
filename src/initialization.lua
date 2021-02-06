local Init = {}

local event = require("event")
local file = io.open("./conf/config.lua", "r")
local config = file:read("*a")
file.close()

local ci_flag = false
local co_count = 1
local fi_count = 1
local fif_count = 1

local replace;


function Init.start()
    local interval = config.chestInput.checkInterval or 2
    local timer = event.timer(interval, Init.check, math.huge)
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
        local config_file = io.open("./conf/config.lua", "w")
        print(config)
        config_file:write(config)
        config_file.close()
        os.exit(0)
    end
end

while true do
    local id, _1, _2, _3 = event.pull("component_added")
    print(id)
    print(_1)
    print(_2)
    print(_3)
    if id then
        if not ci_flag then
            config:gsub("${ci1}", "address")
            ci_flag = true
        end
        if co_count < 13 then
            config:gsub(string.format("${co%d}", co_count), "address")
            co_count = co_count + 1
        elseif fi_count < 4 then
            config:gsub(string.format(string.format("${fi%d}", fi_count), co_count), "address")
            fi_count = fi_count + 1
        elseif fif_count < 4 then
            config:gsub(string.format("${fif%d}", fif_count), "address")
            fif_count = fif_count + 1
        end
        print("replace:" .. replace)
        --TODO find address var
        config:gsub(replace, "address")
    end
    os.sleep(1)
end


return Init
