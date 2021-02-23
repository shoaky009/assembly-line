local _M = {}
local R = {}
local ITEM = "item"
local MOLTEN = "molten"
local FLUID = "fluid"

R[1] = {
    nickname = "Heavy-DutyAlloyIngotT4",
    items = {
        { "GalacticraftMars:item.itemBasicAsteroids.0", type = ITEM, amount = 1 },
        { "dreamcraft:item.IceCompressedPlate.0", type = ITEM, amount = 3 },
        { "dreamcraft:item.IceCompressedPlate.0", type = ITEM, amount = 3 },
        { "gregtech:gt.metaitem.01.26317", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.26314", type = MOLTEN, amount = 2, times = 18  }
    }
}

R[2] = {
    nickname = "Electric Motor (LuV)",
    items = {
        { "gregtech:gt.metaitem.01.23399", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.22374", type = ITEM, amount = 2 },
        { "bartworks:gt.bwMetaGeneratedwireFine.90", type = ITEM, amount = 64 },
        { "bartworks:gt.bwMetaGeneratedwireFine.90", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 1, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 250, cname = "lubricant" }
    }
}

R[3] = {
    nickname = "Electric Pump (LuV)",
    items = {
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.5181", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17374", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.27374", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.28635", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.21374", type = ITEM, amount = 2 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 1, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 250, cname = "lubricant" }
    }
}

R[4] = {
    nickname = "Electric Piston (LuV)",
    items = {
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17374", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.28374", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25374", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.23374", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.31374", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.20374", type = ITEM, amount = 2 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 1, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 250, cname = "lubricant" }
    }
}

R[5] = {
    nickname = "Conveyor Module (LuV)",
    items = {
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17374", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.28374", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25374", type = ITEM, amount = 32 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 1, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 250, cname = "lubricant" },
        { "gregtech:gt.metaitem.99.635", type = FLUID, amount = 1440, cname = "molten.styrenebutadienerubber" }
    }
}

R[6] = {
    nickname = "Robot Arm (LuV)",
    items = {
        { "gregtech:gt.metaitem.02.22374", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.31374", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.20374", type = ITEM, amount = 3 },
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.32645", type = ITEM, amount = 1 },
        --{ "gregtech:gt.metaitem.03.32087", type = ITEM, amount = 2 },
        --{ "gregtech:gt.metaitem.03.32086", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32096", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32089", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32085", type = ITEM, amount = 8 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 4, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 250, cname = "lubricant" }
    }
}

R[7] = {
    nickname = "Sensor (LuV)",
    items = {
        { "gregtech:gt.blockmachines.4470", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 1 },
        { "bartworks:gt.bwMetaGeneratedplate.90", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32725", type = ITEM, amount = 1 },
        --{ "gregtech:gt.metaitem.03.32087", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32096", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29037", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29037", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29037", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[8] = {
    nickname = "Emitter (LuV)",
    items = {
        { "gregtech:gt.blockmachines.4470", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 1 },
        { "bartworks:gt.bwMetaGeneratedstick.90", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32725", type = ITEM, amount = 1 },
        --{ "gregtech:gt.metaitem.03.32087", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32096", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29037", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29037", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29037", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[9] = {
    nickname = "Field Generator (LuV)",
    items = {
        { "gregtech:gt.blockmachines.4470", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17374", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.32725", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.32685", type = ITEM, amount = 4 },
        --{ "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32090", type = ITEM, amount = 4 },
        { "bartworks:gt.bwMetaGeneratedwireFine.90", type = ITEM, amount = 64 },
        { "bartworks:gt.bwMetaGeneratedwireFine.90", type = ITEM, amount = 64 },
        { "bartworks:gt.bwMetaGeneratedwireFine.90", type = ITEM, amount = 64 },
        { "bartworks:gt.bwMetaGeneratedwireFine.90", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1766", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[10] = {
    nickname = "Energy Hatch (LuV)",
    items = {
        { "gregtech:gt.blockmachines.16", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.2400", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32059", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32087", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32146", type = ITEM, amount = 2 },
        { "gregtech:gt.180k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.180k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32615", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 2000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 720, cname = "molten.solderingalloy" }
    }
}

R[11] = {
    nickname = "Dynamo Hatch (LuV)",
    items = {
        { "gregtech:gt.blockmachines.16", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.24991", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32059", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32087", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32146", type = ITEM, amount = 2 },
        { "gregtech:gt.180k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.180k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32615", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 2000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 720, cname = "molten.solderingalloy" }
    }
}

R[12] = {
    nickname = "Fusion Reactor Computer MK1",
    items = {
        { "gregtech:gt.blockcasings4.7", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.22325", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.22317", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.32675", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32058", type = ITEM, amount = 32 },
        { "gregtech:gt.blockmachines.2400", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 20, times = 144 },
        { "gregtech:gt.metaitem.01.11357", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[13] = {
    nickname = "Heavy-DutyAlloyIngotT5",
    items = {
        { "dreamcraft:item.HeavyDutyPlateTier4.0", type = ITEM, amount = 1 },
        { "dreamcraft:item.QuantinumCompressedPlate.0", type = ITEM, amount = 4 },
        { "dreamcraft:item.QuantinumCompressedPlate.0", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.26070", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.23314", type = MOLTEN, amount = 1, times = 72 }
    }
}

R[14] = {
    nickname = "Electric Motor (ZPM)",
    items = {
        { "gregtech:gt.metaitem.01.23399", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.02.22325", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.28325", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25325", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.02.19070", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19070", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19070", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 2, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 750, cname = "lubricant" }
    }
}

R[15] = {
    nickname = "Electric Pump (ZPM)",
    items = {
        { "gregtech:gt.metaitem.01.32607", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.5192", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17325", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.27325", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.28635", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.02.21325", type = ITEM, amount = 2 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 2, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 750, cname = "lubricant" }
    }
}

R[16] = {
    nickname = "Electric Piston (ZPM)",
    items = {
        { "gregtech:gt.metaitem.01.32607", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17325", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.28325", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25325", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.23325", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.31325", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.20325", type = ITEM, amount = 2 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 2, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 750, cname = "lubricant" }
    }
}

R[17] = {
    nickname = "Conveyor Module (ZPM)",
    items = {
        { "gregtech:gt.metaitem.01.32607", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17325", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.28325", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25325", type = ITEM, amount = 32 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 2, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 750, cname = "lubricant" },
        { "gregtech:gt.metaitem.99.635", type = FLUID, amount = 2880, cname = "molten.styrenebutadienerubber" }
    }
}

R[18] = {
    nickname = "Circuit Assembler",
    items = {
        { "gregtech:gt.blockmachines.1185", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32655", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.32675", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32685", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32695", type = ITEM, amount = 1 },
        { "bartworks:gt.bwMetaGeneratedplate.88", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 10, times = 144 },
    }
}

R[19] = {
    nickname = "Robot Arm (ZPM)",
    items = {
        { "gregtech:gt.metaitem.02.22325", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.31325", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.20325", type = ITEM, amount = 3 },
        { "gregtech:gt.metaitem.01.32607", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.32646", type = ITEM, amount = 1 },
        --{ "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 2 },
        --{ "gregtech:gt.metaitem.03.32087", type = ITEM, amount = 4 },
        --{ "gregtech:gt.metaitem.03.32086", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.03.32090", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32096", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32089", type = ITEM, amount = 8 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 8, times = 144 },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 750, cname = "lubricant" }
    }
}

R[20] = {
    nickname = "Emitter (ZPM)",
    items = {
        { "gregtech:gt.blockmachines.4421", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32607", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.23317", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32725", type = ITEM, amount = 2 },
        --{ "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32090", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29868", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29868", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29868", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[21] = {
    nickname = "Sensor (ZPM)",
    items = {
        { "gregtech:gt.blockmachines.4421", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32607", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.28325", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32725", type = ITEM, amount = 2 },
        --{ "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32090", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29868", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29868", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29868", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[22] = {
    nickname = "Energy Hatch (ZPM)",
    items = {
        { "gregtech:gt.blockmachines.07", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.2421", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32161", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32147", type = ITEM, amount = 2 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32616", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 4000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1440, cname = "molten.solderingalloy" }
    }
}

R[23] = {
    nickname = "Dynamo Hatch (ZPM)",
    items = {
        { "gregtech:gt.blockmachines.07", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.24992", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32161", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32088", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32147", type = ITEM, amount = 2 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32616", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 4000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1440, cname = "molten.solderingalloy" }
    }
}

R[24] = {
    nickname = "Field Generator (ZPM)",
    items = {
        { "gregtech:gt.blockmachines.4421", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17325", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.32725", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32686", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.19070", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19070", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19070", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19070", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1748", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[25] = {
    nickname = "Fusion Reactor Computer MK2",
    items = {
        { "gregtech:gt.blockcasings4.7", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.22070", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.32676", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32162", type = ITEM, amount = 48 },
        { "gregtech:gt.blockmachines.2421", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 20, times = 144 },
        { "gregtech:gt.metaitem.01.11360", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[26] = {
    nickname = "Heavy-DutyAlloyIngotT6",
    items = {
        { "dreamcraft:item.HeavyDutyPlateTier5.0", type = ITEM, amount = 1 },
        { "dreamcraft:item.LeadOriharukonPlate.0", type = ITEM, amount = 5 },
        { "dreamcraft:item.LeadOriharukonPlate.0", type = ITEM, amount = 5 },
        { "gregtech:gt.metaitem.01.26329", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 1, times = 144 }
    }
}

R[27] = {
    nickname = "Electric Motor (UV)",
    items = {
        { "gregtech:gt.metaitem.02.22399", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.02.22129", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.28129", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25129", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1296, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 2000, cname = "lubricant" }
    }
}

R[28] = {
    nickname = "Heavy-DutyAlloyIngotT7",
    items = {
        { "dreamcraft:item.HeavyDutyPlateTier6.0", type = ITEM, amount = 1 },
        { "dreamcraft:item.MysteriousCrystalCompressedPlate.0", type = ITEM, amount = 6 },
        { "dreamcraft:item.MysteriousCrystalCompressedPlate.0", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.26129", type = ITEM, amount = 10 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 2, times = 144 }
    }
}

R[29] = {
    nickname = "Electric Pump (UV)",
    items = {
        { "gregtech:gt.metaitem.01.32608", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.5203", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17129", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.27129", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.28635", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.02.21129", type = ITEM, amount = 2 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1296, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 2000, cname = "lubricant" }
    }
}

R[30] = {
    nickname = "Electric Piston (UV)",
    items = {
        { "gregtech:gt.metaitem.01.32608", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17129", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.28129", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25129", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.23129", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.31129", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.20129", type = ITEM, amount = 2 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1296, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 2000, cname = "lubricant" }
    }
}

R[31] = {
    nickname = "Conveyor Module (UV)",
    items = {
        { "gregtech:gt.metaitem.01.32608", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17129", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.28129", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.25129", type = ITEM, amount = 32 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1296, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 2000, cname = "lubricant" },
        { "gregtech:gt.metaitem.99.635", type = FLUID, amount = 5760, cname = "molten.styrenebutadienerubber" }
    }
}

R[32] = {
    nickname = "Robot Arm (UV)",
    items = {
        { "gregtech:gt.metaitem.02.22129", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.31129", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.20129", type = ITEM, amount = 3 },
        { "gregtech:gt.metaitem.01.32608", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.32647", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32090", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32096", type = ITEM, amount = 8 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2304, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 2000, cname = "lubricant" },
    }
}

R[33] = {
    nickname = "Sensor (UV)",
    items = {
        { "gregtech:gt.blockmachines.4225", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32608", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17129", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32726", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29327", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29327", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29327", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2304, cname = "molten.solderingalloy" }
    }
}

R[34] = {
    nickname = "Emitter (UV)",
    items = {
        { "gregtech:gt.blockmachines.4225", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32608", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.23129", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32726", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29327", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29327", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29327", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2304, cname = "molten.solderingalloy" }
    }
}

R[35] = {
    nickname = "Energy Hatch (UV)",
    items = {
        { "gregtech:gt.blockmachines.18", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.2441", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32163", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32148", type = ITEM, amount = 2 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32617", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 8000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2880, cname = "molten.solderingalloy" }
    }
}

R[36] = {
    nickname = "Dynamo Hatch (UV)",
    items = {
        { "gregtech:gt.blockmachines.08", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.24986", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32163", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32148", type = ITEM, amount = 2 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32617", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 8000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2880, cname = "molten.solderingalloy" }
    }
}

R[37] = {
    nickname = "Neuro Processing Unit",
    items = {
        { "gregtech:gt.metaitem.03.32105", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32073", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.03.32023", type = ITEM, amount = 16 },
        { "gregtech:gt.blockmachines.5280", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.02.18320", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29635", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.26374", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.30609", type = FLUID, amount = 250, cname = "growthmediumsterilized" },
        { "IC2:itemCellEmpty.3", type = FLUID, amount = 250, cname = "ic2uumatter" },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 1000, cname = "ic2coolant" }
    }
}

R[38] = {
    nickname = "Wetware Mainframe (UHV)",
    items = {
        { "gregtech:gt.blockmachines.4425", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32094", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32147", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.03.32027", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.03.32024", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.03.32026", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.03.32025", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.03.32039", type = ITEM, amount = 48 },
        { "gregtech:gt.blockmachines.2420", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29471", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2880, cname = "molten.solderingalloy" },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 10000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.01.30093", type = FLUID, amount = 2500, cname = "radon" }
    }
}

R[39] = {
    nickname = "Field Generator (UHV)",
    items = {
        { "gregtech:gt.blockmachines.4225", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17129", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.32726", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.32687", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19103", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.1808", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 1296, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2304, cname = "molten.solderingalloy" }
    }
}

R[40] = {
    nickname = "Electric Motor (UHV)",
    items = {
        { "gregtech:gt.metaitem.02.22399", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.02.22982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.28982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.25982", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.02.19129", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.11318", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 2592, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2592, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 4000, cname = "lubricant" }
    }
}

R[41] = {
    nickname = "Electric Pump (UHV)",
    items = {
        { "gregtech:gt.metaitem.01.32596", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.5213", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17982", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.27982", type = ITEM, amount = 16 },
        { "gregtech:gt.metaitem.01.28471", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.02.21982", type = ITEM, amount = 4 },
        { "gregtech:gt.blockmachines.11318", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 2592, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2592, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 4000, cname = "lubricant" }
    }
}

R[42] = {
    nickname = "Fusion Reactor Computer MK3",
    items = {
        { "gregtech:gt.blockcasings4.7", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.22103", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.32677", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32164", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.2442", type = ITEM, amount = 32 },
        { "gregtech:gt.metaitem.01.11314", type = MOLTEN, amount = 20, times = 144 },
        { "gregtech:gt.metaitem.01.11320", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[43] = {
    nickname = "Void Miner I",
    items = {
        { "gregtech:gt.blockmachines.1179", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.4166", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.17070", type = ITEM, amount = 3 },
        { "gregtech:gt.metaitem.01.32606", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.32695", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.32675", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.27070", type = ITEM, amount = 36 },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1440, cname = "molten.solderingalloy" },
        { "bartworks:gt.bwMetaGeneratedcell.41", type = FLUID, amount = 20000, cname = "neon" }
    }
}

R[44] = {
    nickname = "Electric Piston (UHV)",
    items = {
        { "gregtech:gt.metaitem.01.32596", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17982", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.28982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.25982", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.23982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.02.31982", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.02.20982", type = ITEM, amount = 4 },
        { "gregtech:gt.blockmachines.11318", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 2592, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2592, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 4000, cname = "lubricant" }
    }
}

R[45] = {
    nickname = "Conveyor Module (UHV)",
    items = {
        { "gregtech:gt.metaitem.01.32596", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.17982", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.28982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.25982", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.11318", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 2592, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 2592, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 4000, cname = "lubricant" },
        { "gregtech:gt.metaitem.99.471", type = FLUID, amount = 5760, cname = "molten.silicone" }
    }
}

R[46] = {
    nickname = "Robot Arm (UHV)",
    items = {
        { "gregtech:gt.metaitem.02.22982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.02.31982", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.02.20982", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.01.32596", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.01.32648", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32091", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.03.32090", type = ITEM, amount = 8 },
        { "gregtech:gt.blockmachines.11318", type = ITEM, amount = 6 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 2592, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 4608, cname = "molten.solderingalloy" },
        { "gregtech:gt.metaitem.01.30724", type = FLUID, amount = 4000, cname = "lubricant" },
    }
}

R[47] = {
    nickname = "Emitter (UHV)",
    items = {
        { "gregtech:gt.blockmachines.5078", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32596", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.23982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32726", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.11318", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 2592, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 4608, cname = "molten.solderingalloy" }
    }
}

R[48] = {
    nickname = "Sensor (UHV)",
    items = {
        { "gregtech:gt.blockmachines.5078", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32596", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.17982", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.01.32726", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 4 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.metaitem.01.29320", type = ITEM, amount = 64 },
        { "gregtech:gt.blockmachines.11318", type = ITEM, amount = 7 },
        { "gregtech:gt.metaitem.99.327", type = FLUID, amount = 2592, cname = "molten.naquadria" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 4608, cname = "molten.solderingalloy" }
    }
}

R[49] = {
    nickname = "Dynamo Hatch (ZPM)",
    items = {
        { "gregtech:gt.blockmachines.19", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.02.24985", type = ITEM, amount = 8 },
        { "gregtech:gt.metaitem.03.32165", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32149", type = ITEM, amount = 2 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32618", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 16000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 5760, cname = "molten.solderingalloy" }
    }
}

R[50] = {
    nickname = "Energy Hatch (UHV)",
    items = {
        { "gregtech:gt.blockmachines.19", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.2022", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32165", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32095", type = ITEM, amount = 2 },
        { "gregtech:gt.metaitem.03.32149", type = ITEM, amount = 2 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.360k_Helium_Coolantcell.0", type = ITEM, amount = 1 },
        { "gregtech:gt.metaitem.01.32618", type = ITEM, amount = 1 },
        { "IC2:itemCellEmpty.9", type = FLUID, amount = 16000, cname = "ic2coolant" },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 5760, cname = "molten.solderingalloy" }
    }
}

R[51] = {
    nickname = "Void Miner II",
    items = {
        { "gregtech:gt.blockmachines.12741", type = ITEM, amount = 1 },
        { "gregtech:gt.blockmachines.4484", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.17388", type = ITEM, amount = 3 },
        { "gregtech:gt.metaitem.01.32607", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.32696", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.32676", type = ITEM, amount = 9 },
        { "gregtech:gt.metaitem.01.27388", type = ITEM, amount = 36 },
        { "gregtech:gt.metaitem.99.314", type = FLUID, amount = 1440, cname = "molten.solderingalloy" },
        { "bartworks:gt.bwMetaGeneratedcell.42", type = FLUID, amount = 20000, cname = "krypton" }
    }
}

function _M.getRecipes()
    return R
end

return _M
