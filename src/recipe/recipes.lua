local _M = {}
local R = {}
local ITEM = "item"
local MOLTEN = "molten"
local FLUID = "fluid"
local CELL = "cell"

R[1] = {
    nickname = "Heavy-DutyAlloyIngotT4",
    items = {
        { "Heavy-Duty Plate", type = ITEM, amount = 1 },
        { "Compressed Ice Plate", type = ITEM, amount = 3 },
        { "Compressed Ice Plate", type = ITEM, amount = 3 },
        { "gt.metaitem.01.26317.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.26314.name", type = MOLTEN, amount = 2, times = 18 }
    }
}

R[2] = {
    nickname = "Electric Motor (LuV)",
    items = {
        { "gt.metaitem.01.23399.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.22374.name", type = ITEM, amount = 2 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 1, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250, cname = "fluid.lubricant" }
    }
}

R[3] = {
    nickname = "Electric Pump (LuV)",
    items = {
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.gt_pipe_niobiumtitanium_small.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.17374.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.27374.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.28635.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.21374.name", type = ITEM, amount = 2 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 1, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250, cname = "fluid.lubricant" }
    }
}

R[4] = {
    nickname = "Electric Piston (LuV)",
    items = {
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.17374.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.28374.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25374.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.23374.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.31374.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.20374.name", type = ITEM, amount = 2 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 1, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250, cname = "fluid.lubricant" }
    }
}

R[5] = {
    nickname = "Conveyor Module (LuV)",
    items = {
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.17374.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.28374.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25374.name", type = ITEM, amount = 32 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 1, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250, cname = "fluid.lubricant" },
        { "gt.metaitem.99.635.name", type = FLUID, amount = 1440, cname = "fluid.molten.styrenebutadienerubber" }
    }
}

R[6] = {
    nickname = "Robot Arm (LuV)",
    items = {
        { "gt.metaitem.02.22374.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.31374.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.20374.name", type = ITEM, amount = 3 },
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.32645.name", type = ITEM, amount = 1 },
        --{ "gt.metaitem.03.32087.name", type = ITEM, amount = 2 },
        --{ "gt.metaitem.03.32086.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32096.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32089.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32085.name", type = ITEM, amount = 8 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250, cname = "fluid.lubricant" }
    }
}

R[7] = {
    nickname = "Sensor (LuV)",
    items = {
        { "gt.blockmachines.gt_frame_hsss.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 1 },
        { "钌铱合金板", type = ITEM, amount = 8 },
        { "gt.metaitem.01.32725.name", type = ITEM, amount = 1 },
        --{ "gt.metaitem.03.32087.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32096.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.29037.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29037.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29037.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 7 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[8] = {
    nickname = "Emitter (LuV)",
    items = {
        { "gt.blockmachines.gt_frame_hsss.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 1 },
        { "钌铱合金杆", type = ITEM, amount = 8 },
        { "gt.metaitem.01.32725.name", type = ITEM, amount = 1 },
        --{ "gt.metaitem.03.32087.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32096.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.29037.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29037.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29037.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 7 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[9] = {
    nickname = "Field Generator (LuV)",
    items = {
        { "gt.blockmachines.gt_frame_hsss.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.17374.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.32725.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.32685.name", type = ITEM, amount = 4 },
        --{ "gt.metaitem.03.32088.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32090.name", type = ITEM, amount = 4 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "细钌铱合金导线", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[10] = {
    nickname = "Energy Hatch (LuV)",
    items = {
        { "gt.blockmachines.hull.tier.06.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.wire.superconductorluv.01.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32059.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32087.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32146.name", type = ITEM, amount = 2 },
        { "gt.180k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.180k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32615.name", type = ITEM, amount = 1 },
        { "Coolant Cell", type = FLUID, amount = 2000, cname = "IC2 Coolant" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 720, cname = "fluid.molten.solderingalloy" }
    }
}

R[11] = {
    nickname = "Dynamo Hatch (LuV)",
    items = {
        { "gt.blockmachines.hull.tier.06.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.24991.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32059.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32087.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32146.name", type = ITEM, amount = 2 },
        { "gt.180k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.180k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32615.name", type = ITEM, amount = 1 },
        { "Coolant Cell", type = FLUID, amount = 2000, cname = "IC2 Coolant" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 720, cname = "fluid.molten.solderingalloy" }
    }
}

R[12] = {
    nickname = "Fusion Reactor Computer MK1",
    items = {
        { "gt.blockcasings4.7.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32088.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32088.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32088.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32088.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.22325.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.22317.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.32675.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32058.name", type = ITEM, amount = 32 },
        { "gt.blockmachines.wire.superconductorluv.01.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 20, times = 144 },
        { "gt.metaitem.01.11357.name", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[13] = {
    nickname = "Heavy-DutyAlloyIngotT5",
    items = {
        { "Heavy Duty Plate Tier 4", type = ITEM, amount = 1 },
        { "Compressed Quantium Plate", type = ITEM, amount = 4 },
        { "Compressed Quantium Plate", type = ITEM, amount = 4 },
        { "gt.metaitem.01.26070.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.23314.name", type = MOLTEN, amount = 1, times = 72 }
    }
}

R[14] = {
    nickname = "Electric Motor (ZPM)",
    items = {
        { "gt.metaitem.01.23399.name", type = ITEM, amount = 2 },
        { "gt.metaitem.02.22325.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.28325.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25325.name", type = ITEM, amount = 16 },
        { "gt.metaitem.02.19070.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19070.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19070.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 2, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 750, cname = "fluid.lubricant" }
    }
}

R[15] = {
    nickname = "Electric Pump (ZPM)",
    items = {
        { "gt.metaitem.01.32607.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.gt_pipe_enderium.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.17325.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.27325.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.28635.name", type = ITEM, amount = 8 },
        { "gt.metaitem.02.21325.name", type = ITEM, amount = 2 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 2, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 750, cname = "fluid.lubricant" }
    }
}

R[16] = {
    nickname = "Electric Piston (ZPM)",
    items = {
        { "gt.metaitem.01.32607.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.17325.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.28325.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25325.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.23325.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.31325.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.20325.name", type = ITEM, amount = 2 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 2, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 750, cname = "fluid.lubricant" }
    }
}

R[17] = {
    nickname = "Conveyor Module (ZPM)",
    items = {
        { "gt.metaitem.01.32607.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.17325.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.28325.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25325.name", type = ITEM, amount = 32 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 2, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 750, cname = "fluid.lubricant" },
        { "gt.metaitem.99.635.name", type = FLUID, amount = 2880, cname = "fluid.molten.styrenebutadienerubber" }
    }
}

R[18] = {
    nickname = "Circuit Assembler",
    items = {
        { "gt.blockmachines.basicmachine.circuitassembler.tier.06.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32655.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.32675.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32685.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32695.name", type = ITEM, amount = 1 },
        { "镀铑钯板", type = ITEM, amount = 8 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 10, times = 144 },
    }
}

R[19] = {
    nickname = "Robot Arm (ZPM)",
    items = {
        { "gt.metaitem.02.22325.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.31325.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.20325.name", type = ITEM, amount = 3 },
        { "gt.metaitem.01.32607.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.32646.name", type = ITEM, amount = 1 },
        --{ "gt.metaitem.03.32088.name", type = ITEM, amount = 2 },
        --{ "gt.metaitem.03.32087.name", type = ITEM, amount = 4 },
        --{ "gt.metaitem.03.32086.name", type = ITEM, amount = 8 },
        { "gt.metaitem.03.32090.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32096.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32089.name", type = ITEM, amount = 8 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 8, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 750, cname = "fluid.lubricant" }
    }
}

R[20] = {
    nickname = "Emitter (ZPM)",
    items = {
        { "gt.blockmachines.gt_frame_naquadahalloy.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32607.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.23317.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.32725.name", type = ITEM, amount = 2 },
        --{ "gt.metaitem.03.32088.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32090.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.29868.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29868.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29868.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 7 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[21] = {
    nickname = "Sensor (ZPM)",
    items = {
        { "gt.blockmachines.gt_frame_naquadahalloy.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32607.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.28325.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.32725.name", type = ITEM, amount = 2 },
        --{ "gt.metaitem.03.32088.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32090.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.29868.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29868.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29868.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 7 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[22] = {
    nickname = "Energy Hatch (ZPM)",
    items = {
        { "gt.blockmachines.hull.tier.07.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.wire.superconductorzpm.02.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32161.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32088.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32147.name", type = ITEM, amount = 2 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32616.name", type = ITEM, amount = 1 },
        { "Coolant Cell", type = FLUID, amount = 4000, cname = "IC2 Coolant" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 1440, cname = "fluid.molten.solderingalloy" }
    }
}

R[23] = {
    nickname = "Dynamo Hatch (ZPM)",
    items = {
        { "gt.blockmachines.hull.tier.07.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.24992.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32161.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32088.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32147.name", type = ITEM, amount = 2 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32616.name", type = ITEM, amount = 1 },
        { "Coolant Cell", type = FLUID, amount = 4000, cname = "IC2 Coolant" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 1440, cname = "fluid.molten.solderingalloy" }
    }
}

R[24] = {
    nickname = "Field Generator (ZPM)",
    items = {
        { "gt.blockmachines.gt_frame_naquadahalloy.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.17325.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.32725.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32686.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.19070.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19070.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19070.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19070.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.vanadiumgallium.04.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[25] = {
    nickname = "Fusion Reactor Computer MK2",
    items = {
        { "gt.blockcasings4.7.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.22070.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.32676.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32162.name", type = ITEM, amount = 48 },
        { "gt.blockmachines.wire.superconductorzpm.02.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 20, times = 144 },
        { "gt.metaitem.01.11360.name", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[26] = {
    nickname = "Heavy-DutyAlloyIngotT6",
    items = {
        { "Heavy Duty Plate Tier 5", type = ITEM, amount = 1 },
        { "Compressed Lead-Oriharukon Plate", type = ITEM, amount = 5 },
        { "Compressed Lead-Oriharukon Plate", type = ITEM, amount = 5 },
        { "gt.metaitem.01.26329.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 1, times = 144 }
    }
}

R[27] = {
    nickname = "Electric Motor (UV)",
    items = {
        { "gt.metaitem.02.22399.name", type = ITEM, amount = 2 },
        { "gt.metaitem.02.22129.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.28129.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25129.name", type = ITEM, amount = 16 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 1296, cname = "fluid.molten.solderingalloy" },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 2000, cname = "fluid.lubricant" }
    }
}

R[28] = {
    nickname = "Heavy-DutyAlloyIngotT7",
    items = {
        { "Heavy Duty Plate Tier 6", type = ITEM, amount = 1 },
        { "Compressed Mysterious Crystal Plate", type = ITEM, amount = 6 },
        { "Compressed Mysterious Crystal Plate", type = ITEM, amount = 6 },
        { "gt.metaitem.01.26129.name", type = ITEM, amount = 10 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 2, times = 144 }
    }
}

R[29] = {
    nickname = "Electric Pump (UV)",
    items = {
        { "gt.metaitem.01.32608.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.gt_pipe_naquadah_large.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.17129.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.27129.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.28635.name", type = ITEM, amount = 16 },
        { "gt.metaitem.02.21129.name", type = ITEM, amount = 2 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 1296, cname = "fluid.molten.solderingalloy" },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 2000, cname = "fluid.lubricant" }
    }
}

R[30] = {
    nickname = "Electric Piston (UV)",
    items = {
        { "gt.metaitem.01.32608.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.17129.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.28129.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25129.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.23129.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.31129.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.20129.name", type = ITEM, amount = 2 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 4 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 1296, cname = "fluid.molten.solderingalloy" },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 2000, cname = "fluid.lubricant" }
    }
}

R[31] = {
    nickname = "Conveyor Module (UV)",
    items = {
        { "gt.metaitem.01.32608.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.17129.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.28129.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.25129.name", type = ITEM, amount = 32 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 1296, cname = "fluid.molten.solderingalloy" },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 2000, cname = "fluid.lubricant" },
        { "gt.metaitem.99.635.name", type = FLUID, amount = 5760, cname = "fluid.molten.styrenebutadienerubber" }
    }
}

R[32] = {
    nickname = "Robot Arm (UV)",
    items = {
        { "gt.metaitem.02.22129.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.31129.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.20129.name", type = ITEM, amount = 3 },
        { "gt.metaitem.01.32608.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.32647.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32090.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32096.name", type = ITEM, amount = 8 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 6 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2304, cname = "fluid.molten.solderingalloy" },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 2000, cname = "fluid.lubricant" },
    }
}

R[33] = {
    nickname = "Sensor (UV)",
    items = {
        { "gt.blockmachines.gt_frame_neutronium.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32608.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.17129.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.32726.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.29327.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29327.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29327.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 7 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2304, cname = "fluid.molten.solderingalloy" }
    }
}

R[34] = {
    nickname = "Emitter (UV)",
    items = {
        { "gt.blockmachines.gt_frame_neutronium.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32608.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.23129.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.32726.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.29327.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29327.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29327.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 7 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2304, cname = "fluid.molten.solderingalloy" }
    }
}

R[35] = {
    nickname = "Energy Hatch (UV)",
    items = {
        { "gt.blockmachines.hull.tier.08.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.wire.superconductoruv.02.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32163.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32148.name", type = ITEM, amount = 2 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32617.name", type = ITEM, amount = 1 },
        { "Coolant Cell", type = FLUID, amount = 8000, cname = "IC2 Coolant" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2880, cname = "fluid.molten.solderingalloy" }
    }
}

R[36] = {
    nickname = "Dynamo Hatch (UV)",
    items = {
        { "gt.blockmachines.hull.tier.08.name", type = ITEM, amount = 1 },
        { "gt.metaitem.02.24986.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32163.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32091.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32148.name", type = ITEM, amount = 2 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.360k_Helium_Coolantcell.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.32617.name", type = ITEM, amount = 1 },
        { "Coolant Cell", type = FLUID, amount = 8000, cname = "IC2 Coolant" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2880, cname = "fluid.molten.solderingalloy" }
    }
}

R[37] = {
    nickname = "Neuro Processing Unit",
    items = {
        { "gt.metaitem.03.32105.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32073.name", type = ITEM, amount = 16 },
        { "gt.metaitem.03.32023.name", type = ITEM, amount = 16 },
        { "gt.blockmachines.gt_pipe_polybenzimidazole_tiny.name", type = ITEM, amount = 8 },
        { "gt.metaitem.02.18320.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.29635.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.26374.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.30609.name", type = FLUID, amount = 250, cname = "fluid.growthmediumsterilized" },
        { "UuMatter Cell", type = FLUID, amount = 250, cname = "UU-Matter" },
        { "Coolant Cell", type = FLUID, amount = 1000, cname = "IC2 Coolant" }
    }
}

R[38] = {
    nickname = "Wetware Mainframe (UHV)",
    items = {
        { "gt.blockmachines.gt_frame_tritanium.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32094.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32147.name", type = ITEM, amount = 16 },
        { "gt.metaitem.03.32027.name", type = ITEM, amount = 16 },
        { "gt.metaitem.03.32024.name", type = ITEM, amount = 16 },
        { "gt.metaitem.03.32026.name", type = ITEM, amount = 16 },
        { "gt.metaitem.03.32025.name", type = ITEM, amount = 16 },
        { "gt.metaitem.03.32039.name", type = ITEM, amount = 48 },
        { "gt.blockmachines.wire.superconductorzpm.02.name", type = ITEM, amount = 64 },
        { "gt.metaitem.01.29471.name", type = ITEM, amount = 64 },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2880, cname = "fluid.molten.solderingalloy" },
        { "Coolant Cell", type = FLUID, amount = 10000, cname = "IC2 Coolant" },
        { "gt.metaitem.01.30093.name", type = FLUID, amount = 2500, cname = "fluid.radon" }
    }
}

R[39] = {
    nickname = "Field Generator (UHV)",
    items = {
        { "gt.blockmachines.gt_frame_neutronium.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.17129.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.32726.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.32687.name", type = ITEM, amount = 4 },
        { "gt.metaitem.03.32095.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19103.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.naquadahalloy.04.name", type = ITEM, amount = 8 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 1296, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2304, cname = "fluid.molten.solderingalloy" }
    }
}

R[40] = {
    nickname = "Electric Motor (UHV)",
    items = {
        { "gt.metaitem.02.22399.name", type = ITEM, amount = 4 },
        { "gt.metaitem.02.22982.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.28982.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.25982.name", type = ITEM, amount = 32 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.metaitem.02.19129.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.bedrockium.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 2592, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2592, cname = "fluid.molten.solderingalloy" },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 4000, cname = "fluid.lubricant" }
    }
}

R[41] = {
    nickname = "Electric Pump (UHV)",
    items = {
        { "gt.metaitem.01.32596.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.gt_pipe_neutronium_large.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.17982.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.27982.name", type = ITEM, amount = 16 },
        { "gt.metaitem.01.28471.name", type = ITEM, amount = 32 },
        { "gt.metaitem.02.21982.name", type = ITEM, amount = 4 },
        { "gt.blockmachines.cable.bedrockium.04.name", type = ITEM, amount = 2 },
        { "gt.metaitem.99.327.name", type = FLUID, amount = 2592, cname = "fluid.molten.naquadria" },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2592, cname = "fluid.molten.solderingalloy" },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 4000, cname = "fluid.lubricant" }
    }
}

R[42] = {
    nickname = "Fusion Reactor Computer MK3",
    items = {
        { "gt.blockcasings4.7.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32095.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32095.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32095.name", type = ITEM, amount = 1 },
        { "gt.metaitem.03.32095.name", type = ITEM, amount = 1 },
        { "gt.metaitem.01.22103.name", type = ITEM, amount = 4 },
        { "gt.metaitem.01.32677.name", type = ITEM, amount = 2 },
        { "gt.metaitem.03.32164.name", type = ITEM, amount = 64 },
        { "gt.blockmachines.wire.superconductoruv.04.name", type = ITEM, amount = 32 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 20, times = 144 },
        { "gt.metaitem.01.11320.name", type = MOLTEN, amount = 8, times = 144 }
    }
}

R[43] = {
    nickname = "Void Miner I",
    items = {
        { "gt.blockmachines.multimachine.oredrill4.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.gt_frame_europium.name", type = ITEM, amount = 9 },
        { "gt.metaitem.01.17070.name", type = ITEM, amount = 3 },
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 9 },
        { "gt.metaitem.01.32695.name", type = ITEM, amount = 9 },
        { "gt.metaitem.01.32675.name", type = ITEM, amount = 9 },
        { "gt.metaitem.01.27070.name", type = ITEM, amount = 36 },
        { "gt.metaitem.99.314.name", type = FLUID, amount = 2592, cname = "fluid.molten.solderingalloy" },
        { "氖单元", type = FLUID, amount = 20000, cname = "fluid.Neon" }
    }
}

function _M.getRecipes()
    return R
end

return _M
