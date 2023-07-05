--- Nomads: craftAreaGroup.lua
--- @author SirLich

local typeMaps = mjrequire "common/typeMaps"

local mod = {
    loadOrder = 1,
}

function mod:onload(craftAreaGroup)
    typeMaps:insert("craftAreaGroup", craftAreaGroup.types, {
        key = "drying_rack",
    })
end

return mod