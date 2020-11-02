local config = {
    chestInput = {},
    chestOutput = {},
    chestOutputMode = false
}
local manager = require("manager")
local sides = require("sides")

config.chestInput.proxy = manager.proxy("dd32dd83-709c-465c-ab64-5c54217d82f9")
--me interface chest
config.chestInput.chestSourceSide = sides.north
config.chestInput.chestOutputSide = sides.south
--molten output side
config.chestInput.moltenOutputSide = sides.west
config.chestInput.checkInterval = 3

--fluid source side
config.fluidSourceSide = 0
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

--ender chest
config.chestOutput[1] = manager.proxy("199e706b-3330-499c-81a1-f0c876ee4658")
config.chestOutput[2] = manager.proxy("8c838858-ce5a-4c7f-918a-a080955fc48f")
config.chestOutput[3] = manager.proxy("3e712349-e182-4913-97b6-4b516c910646")
config.chestOutput[4] = manager.proxy("366c268d-49f3-4e56-bba1-23df471f1079")
config.chestOutput[5] = manager.proxy("b6f5eb36-997e-4277-aa44-6b190bdc3015")
config.chestOutput[6] = manager.proxy("015a5ead-f58d-4921-942c-50ad0d5b43d8")
config.chestOutput[7] = manager.proxy("caf31b85-96c0-45f2-a439-1a0bd90c9d51")
config.chestOutput[8] = manager.proxy("79b1e41d-8d86-467a-b1e2-02b1c0a8b758")
config.chestOutput[9] = manager.proxy("249b668b-6377-4ccd-870d-9f1f9d3af397")
config.chestOutput[10] = manager.proxy("cb2991bc-389e-4288-b077-2fb9613e2e63")
config.chestOutput[11] = manager.proxy("3c949f89-83b9-406d-be80-59f002c810c2")
config.chestOutput[12] = manager.proxy("4e5cf1f9-d38b-4cfc-820c-a543da85be76")
config.chestOutput[13] = manager.proxy("f8af099d-23da-4682-bce5-712b50fa3b77")

return config
