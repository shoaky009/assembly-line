local config = {}
local manager = require("manager")
local sides = require("sides")

config.chestInput.proxy = manager.proxy("address0")
--me interface chest
config.chestInput.chestSourceSide = sides.top
config.chestInput.chestOutputSide = sides.top
--molten output side
config.chestInput.moltenOutputSide = sides.west

--fluid source side
config.fluidSourceSide = sides.south
config.fluidInput1 = manager.proxy("address1")
config.fluidInput2 = manager.proxy("address2")
config.fluidInput3 = manager.proxy("address3")
config.fluidInput4 = manager.proxy("address4")

--me fluid interfaces
config.fluidInterface1 = manager.proxy("iAddress1")
config.fluidInterface2 = manager.proxy("iAddress2")
config.fluidInterface3 = manager.proxy("iAddress3")
config.fluidInterface4 = manager.proxy("iAddress4")


return config
