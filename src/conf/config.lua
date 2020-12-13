local config = {
    chestInput = {},
    chestOutput = {},
    chestOutputMode = true
}
local manager = require("manager")
local sides = require("sides")

config.chestInput.proxy = manager.proxy("638fb0c6-b7a6-4ef3-b0ee-da57ebe3f350")
--me interface chest
config.chestInput.chestSourceSide = sides.north
config.chestInput.chestOutputSide = sides.south
--molten output side
config.chestInput.moltenOutputSide = sides.west
config.chestInput.checkInterval = 3

--fluid source side
config.fluidSourceSide = 0
config.tankSourceSide = sides.west
config.fluidInput1 = manager.proxy("302cb9bd-0aaa-49e4-a137-03f357daa17e")
config.fluidInput2 = manager.proxy("fc825e6a-ce6c-4893-84d7-c152c3e521de")
config.fluidInput3 = manager.proxy("820c479c-6d6c-423f-bb26-1d3ceaea6b54")
config.fluidInput4 = manager.proxy("924b47c1-78e8-4a2b-91be-7676da1dcffb")

--me fluid interfaces
config.fluidInterface1 = manager.proxy("79b956a5-fa6f-4520-a8fc-66b3f316e690")
config.fluidInterface2 = manager.proxy("85f09a86-897e-43cd-9355-d84b6060fdf2")
config.fluidInterface3 = manager.proxy("b329aa0a-8d8b-4434-8d2c-82tacbeebec0")
config.fluidInterface4 = manager.proxy("c6529344-c66b-4600-b07b-45358e141616")

--ender chest
config.chestOutput[1] = manager.proxy("896fe0aa-0b3d-44fb-a6a4-cf5940ae1ale")
config.chestOutput[2] = manager.proxy("5fdd9694-f0e9-4613-ac5d-f44afc1c4a91")
config.chestOutput[3] = manager.proxy("45dc91ff-2ef9-4412-a17e-892542e4f00f")
config.chestOutput[4] = manager.proxy("7c824c05-69b5-4e76-ac4b-1646e6a4685e")
config.chestOutput[5] = manager.proxy("7a4c2db6-80cf-4805-badd-7fdb5fababb5")
config.chestOutput[6] = manager.proxy("77d40e0b-0884-4135-b991-0e552316191a")
config.chestOutput[7] = manager.proxy("add6fa46-4250-4e10-8bda-ca8897dd0ee5")
config.chestOutput[8] = manager.proxy("269331d2-14ec-4587-863d-9aaffa09ea90")
config.chestOutput[9] = manager.proxy("65321ef9-915c-4389-ac9f-1146e9ec927b")
config.chestOutput[10] = manager.proxy("139656ab-ac33-4a53-a2cb-d439cef2a10a")
config.chestOutput[11] = manager.proxy("71ce87cf-e03f-4125-bdf5-bbbb730b037f")
config.chestOutput[12] = manager.proxy("a501be25-41f3-400e-a00d-c47859cac683")
config.chestOutput[13] = manager.proxy("e9a1e39a-bfb4-4d6d-832e-69ab142f06d7")

return config
