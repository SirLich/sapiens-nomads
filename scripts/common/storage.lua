--- Nomads: storage.lua
--- This file increases the carry fount for all objects, by a set constant.
local shadow = mjrequire "hammerstone/utils/shadow"

local mod = {
	loadOrder = 100 -- Late load order, so we run after all storages are registered.
}

function mod:mjInit(super)
	super(self)

	local CARRY_BONUS_MULTIPLIER = 2


	for i, storage in ipairs(self.validTypes) do

		local function double(str)
			if storage[str] ~= nil then
				storage[str] = storage[str] * CARRY_BONUS_MULTIPLIER
			end
		end

		double("maxCarryCount")
		double("maxCarryCountLimitedAbility")
		double("maxCarryCountForRunning")

	end
end

return shadow:shadow(mod)