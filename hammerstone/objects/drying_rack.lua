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
				blocksRain = true,
			}
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
					default_model = "tipi_branch2",
					resource = "branch",
				},
				{
					key = "branch_3",
					default_model = "tipi_branch3",
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