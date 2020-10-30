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
config.fluidInterface1 = manager.proxy("87aafc0c-522a-4c6b-bee2c0298e2a7611")
config.fluidInterface2 = manager.proxy("f77c56a6-a8f6-47b3-8dda-02c46e77e9bb")
config.fluidInterface3 = manager.proxy("0015cb12-d5c5-41fb-ad88-cc49fc327610")
config.fluidInterface4 = manager.proxy("da6aa171-ec43-475d-ae41-d6843cac5df0")


return config
