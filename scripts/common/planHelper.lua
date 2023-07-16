
local gameObject = mjrequire "common/gameObject"

local mod = {
    loadOrder = 1,
}

function mod:onload(planHelper)
    planHelper.huntPlanInfosByObjectType[gameObject.types.bison.index] = planHelper.spearHuntingInfo
end

return mod