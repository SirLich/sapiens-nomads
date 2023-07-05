--- Nomads: gameConstants.lua
--- @author SirLich

local shadow = mjrequire "hammerstone/utils/shadow"

local mod = {
	loadOrder = 1
}

function mod:postload(parent)
	parent.harvestCountForSoilFertilityDegredation = 1 -- base game 20

	local MORE_DAMAGE_MULTIPLIER = 2

	parent.windAffectedCallbackHighChancePerSecond = parent.windAffectedCallbackHighChancePerSecond * MORE_DAMAGE_MULTIPLIER
	parent.windAffectedCallbackModerateChancePerSecond = parent.windAffectedCallbackModerateChancePerSecond * MORE_DAMAGE_MULTIPLIER
	parent.windAffectedCallbackLowChancePerSecond = parent.windAffectedCallbackLowChancePerSecond * MORE_DAMAGE_MULTIPLIER
end

return shadow:shadow(mod)