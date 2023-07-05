return {
	description = {
		identifier = "pemmican"
	},
	components = {
		hs_object = {
			model = "pemmican"
		},
		hs_resource = {
			storage_identifier = "alpacaMeat"
		},
		hs_evolving_object = {
			time_years = 5,
			category = "rot",
			transform_to = {"bone"}
		},
		hs_food = {
			value = 1,
			portions = 20,
			items_when_eaten = {"bone"}
		},
		hs_craftable = {
			props = {
				isFoodPreperation = true
			},
			display_object = "pemmican",
			skill = "campfireCooking",
			action_sequence = "fireStickCook",
			craft_area = "drying_rack",
			hs_output = {
				simple_output = {"pemmican"}
			},
			resources = {
				{
					resource = "alpacaMeat",
					action = {
						action_type = "inspect",
						duration = 0.5,
						duration_without_skill = 0.4 -- TODO Balance this.
					}
				}
			}
		}
	}
}
