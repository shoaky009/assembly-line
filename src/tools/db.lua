local config = require("conf.config")
local input = config.chestInput.proxy
local cp = require("component")
local db = cp.database

local dbSlot;
for i = 1, 81 do
    local data = db.get(i)
    if not data then
        dbSlot = i
        break
    end
end

if dbSlot then
    local success = input.store(config.chestInput.chestSourceSide, 1, db.address, dbSlot)
    if success then
        print("store success,dbSlot:" .. dbSlot)
        return
    end
    error("store failed,dbSlot:" .. dbSlot)
else
    error("no available db slot found")
end
