local config = {
    chestInput = {}
}
local manager = require("manager")
local sides = require("sides")

config.chestInput.proxy = manager.proxy("dd32dd83-709c-465c-ab64-5c54217d82f9")
--me interface chest
config.chestInput.chestSourceSide = sides.north
config.chestInput.chestOutputSide = sides.south
--molten output side
config.chestInput.moltenOutputSide = sides.west

--fluid source side
config.fluidSourceSide = sides.south
config.tankSourceSide = sides.west
config.fluidInput1 = manager.proxy("903b7eac-7abb-47f7-ad61-c52a61770a0f")
config.fluidInput2 = manager.proxy("3dfb8047-80e0-41e0-9513-99f6dc292352")
config.fluidInput3 = manager.proxy("ca9d9aa3-cab5-4061-ad38-64d291dbd319")
config.fluidInput4 = manager.proxy("e5b0e1d8-0599-4482-ac23-aa2f622c4059")

--me fluid interfaces
config.fluidInterface1 = manager.proxy("29dde4cd-0b24-4106-9b95-c4deb3c48c6f")
config.fluidInterface2 = manager.proxy("22dc2255-d84b-4a4f-819e-1bea21297de3")
config.fluidInterface3 = manager.proxy("c841470c-7861-49ba-956a-ab12623c4514")
config.fluidInterface4 = manager.proxy("c6529344-c66b-4600-b07b-45358e141616")


return config
