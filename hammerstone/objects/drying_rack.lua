local craftAreaGroup = mjrequire "common/craftAreaGroup"

return {
	description = {
		identifier = "drying_rack"
	},
	components = {
		hs_object = {
			model = "drying_rack",
			props = {
				preventGrassAndSnow = true,
				isPathFindingCollider = true,
				craftAreaGroupTypeIndex = craftAreaGroup.types.drying_rack.index,
				isCraftArea = true,
			}
		},
		hs_plans = {
			available_plans = "availablePlansForCraftArea"
		},
		hs_buildable = {
			skill = "basicBuilding",
			build_sequence = "clearObjectsAndTerrainSequence",
			classification = "build",
			resources = {
				{
					resource = "branch",
					count = 3
				}
			},
			model_placeholder = {
				{
					key = "branch_1",
					default_model = "birchBranch",
					resource = "branch",
				},
				{
					key = "branch_2",
					default_model = "birchBranch",
					resource = "branch",
				},
				{
					key = "branch_3",
					default_model = "birchBranch", -- TODO: This one should use the 'long' remap variant. It's kinda a PITA to set up though, so we could also export and hard-code for a crossbar.
					resource = "branch",
					additional_index_count = 1, -- Automatically fill in the rack_string resource
				},
				{
					key = "branch_4",
					default_model = "rack_string",
					resource = "branch",
					use_default_model = true, -- Use this model, despite the resource used
				},
				{
					key = "branch_store",
					is_store = true,
				}
			}
		}
	}
}