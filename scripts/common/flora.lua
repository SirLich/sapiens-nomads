--- Nomads: flora.lua

local shadow = mjrequire "hammerstone/utils/shadow"

local mod = {
	loadOrder = 100 -- Late load order, so we run after all storages are registered.
}

function mod:load(super, gameObject_)
	super(self, gameObject_)

	local GROW_TIME_MODIFIER = 2
	local DEFAULT_FRUIT_FREQUENCY = 2 -- Base game usually 5 or 10
	local DEFAULT_GROW_TIME_DAYS = 12 -- Base game usually 3 to 6

	for i, floraType in pairs(self.types) do

		mj:log(floraType)

		local function double(str, default)
			if floraType[str] ~= nil then
				floraType[str] = floraType[str] * GROW_TIME_MODIFIER
			else
				floraType[str] = default
			end
		end

		double("fruitFrequencyInYears", DEFAULT_FRUIT_FREQUENCY)
		double("maturityDurationDays", DEFAULT_GROW_TIME_DAYS)
	end
end

return shadow:shadow(mod)