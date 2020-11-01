local _M = {}
local R = {}
local ITEM = "item"
local MOLTEN = "molten"
local FLUID = "fluid"
local CELL = "cell"

--TODO add recipes
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
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250 }
    }
}

R[3] = {
    nickname = "Electric Pump (LuV)",
    items = {
        { "gt.metaitem.01.32606.name", type = ITEM, amount = 1 },
        { "gt.blockmachines.gt_pipe_niobiumtitanium_small.name", type = ITEM, amount = 2 },
        { "gt.mataitem.01.17374.name", type = ITEM, amount = 2 },
        { "gt.mataitem.01.27374.name", type = ITEM, amount = 8 },
        { "gt.mataitem.01.28635.name", type = ITEM, amount = 4 },
        { "gt.mataitem.02.21374.name", type = ITEM, amount = 2 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 2 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 1, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250 }
    }
}

R[4] = {
    nickname = "Electric Piston (LuV)",
    items = {
        { "电动马达luv", type = ITEM, amount = 1 },
        { "高速钢-E板", type = ITEM, amount = 6 },
        { "高速钢-E环", type = ITEM, amount = 4 },
        { "高速钢-E垫片", type = ITEM, amount = 32 },
        { "高速钢-E杆", type = ITEM, amount = 4 },
        { "高速钢-E齿轮", type = ITEM, amount = 1 },
        { "小型高速钢-E齿轮", type = ITEM, amount = 2 },
        { "4x钒镓合金线缆", type = ITEM, amount = 4 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 2, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 750 }
    }
}

R[5] = {
    nickname = "Conveyor Module (LuV)",
    items = {
        { "电动马达luv", type = ITEM, amount = 2 },
        { "高速钢-G板", type = ITEM, amount = 2 },
        { "高速钢-G环", type = ITEM, amount = 4 },
        { "高速钢-G垫片", type = ITEM, amount = 32 },
        { "钇钡铜氧合金线缆", type = ITEM, amount = 2 },
        { "熔融橡胶", type = MOLTEN, amount = 10, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250 }
    }
}

R[6] = {
    nickname = "Robot Arm (LuV)",
    items = {
        { "长高速钢-G杆", type = ITEM, amount = 4 },
        { "高速钢-G齿轮", type = ITEM, amount = 1 },
        { "小型高速钢-G齿轮", type = ITEM, amount = 3 },
        { "电动马达(LuV)", type = ITEM, amount = 2 },
        { "电力活塞(LuV)", type = ITEM, amount = 1 },
        { "纳米处理器主机", type = ITEM, amount = 2 },
        { "处理器主机", type = ITEM, amount = 2 },
        { "高级电路板", type = ITEM, amount = 6 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 6 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 },
        { "gt.metaitem.01.30724.name", type = FLUID, amount = 250 }
    }
}

R[7] = {
    nickname = "Sensor (LuV)",
    items = {
        { "高速钢-G框架", type = ITEM, amount = 1 },
        { "传感器(IV)", type = ITEM, amount = 1 },
        { "传感器(EV)", type = ITEM, amount = 2 },
        { "传感器(HV)", type = ITEM, amount = 4 },
        { "高级电路板", type = ITEM, amount = 7 },
        { "琥珀金箔", type = ITEM, amount = 64 },
        { "琥珀金箔", type = ITEM, amount = 64 },
        { "琥珀金箔", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 7 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[8] = {
    nickname = "Emitter (LuV)",
    items = {
        { "高速钢-G框架", type = ITEM, amount = 1 },
        { "发射器(IV)", type = ITEM, amount = 1},
        { "发射器(EV)", type = ITEM, amount = 2 },
        { "发射器(HV) ", type = ITEM, amount = 4 },
        { "高级电路板", type = ITEM, amount = 7 },
        { "琥珀金箔", type = ITEM, amount = 64 },
        { "琥珀金箔", type = ITEM, amount = 64 },
        { "琥珀金箔", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 7 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 }
    }
}

R[9] = {
    nickname = "Field Generator (LuV)",
    items = {
        { "高速钢-G框架", type = ITEM, amount = 1 },
        { "高速钢-G板", type = ITEM, amount = 6 },
        { "量子之星", type = ITEM, amount = 1 },
        { "发射器(LuV)", type = ITEM, amount = 4 },
        { "纳米处理器主机", type = ITEM, amount = 8 },
        { "精制锇线缆", type = ITEM, amount = 64 },
        { "精制锇线缆", type = ITEM, amount = 64 },
        { "精制锇线缆", type = ITEM, amount = 64 },
        { "精制锇线缆", type = ITEM, amount = 64 },
        { "gt.blockmachines.cable.yttriumbariumcuprate.01.name", type = ITEM, amount = 8 },
        { "gt.metaitem.01.11314.name", type = MOLTEN, amount = 4, times = 144 }
    }
}

function _M.getRecipes()
    return R
end

return _M
