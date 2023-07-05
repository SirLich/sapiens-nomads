local DEBUG_MODIFIER = 0.1

return {
	description = {
		identifier = "packed_tipi"
	},
	components = {
		hs_object = {
			model = "packed_tipi"
		},
		hs_resource = {
			storage_identifier = "woolskin" -- Defined in the base game
		},
		hs_craftable = {
			skill = "basicBuilding",
			action_sequence = "butcher",
			tool = "knapping",
			hs_output = {
				simple_output = {
					"packed_tipi"
				}
			},
			resources = {
				{
					resource = "woolskin",
					count = 3,
					action = {
						action_type = "knap",
						duration = 5 * DEBUG_MODIFIER,
						duration_without_skill = 10 * DEBUG_MODIFIER
					}
				},
				{
					resource = "branch",
					count = 3,
					action = {
						action_type = "knap",
						duration = 5 * DEBUG_MODIFIER,
						duration_without_skill = 10 * DEBUG_MODIFIER
					}
				}
			}
		}
	}
}
