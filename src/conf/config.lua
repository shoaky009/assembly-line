local config = {
    chestInput = {}
}
local manager = require("manager")
local sides = require("sides")

config.chestInput.proxy = manager.proxy("your address")
--me interface chest
config.chestInput.chestSourceSide = sides.top
config.chestInput.chestOutputSide = sides.top
--molten output side
config.chestInput.moltenOutputSide = sides.west

--fluid source side
config.fluidSourceSide = sides.south
config.fluidInput1 = manager.proxy("your address")
config.fluidInput2 = manager.proxy("your address")
config.fluidInput3 = manager.proxy("your address")
config.fluidInput4 = manager.proxy("your address")

--me fluid interfaces
config.fluidInterface1 = manager.proxy("your address")
config.fluidInterface2 = manager.proxy("your address")
config.fluidInterface3 = manager.proxy("your address")
config.fluidInterface4 = manager.proxy("your address")


return config
