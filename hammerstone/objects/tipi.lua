return {
	debug = true,
	description = {
		identifier = "tipi"
	},
	components = {
		hs_object = {
			model = "tipi",
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
					resource = "packed_tipi",
					count = 1
				}
			},
			model_placeholder = {
				{
					key = "packed_tipi_1",
					default_model = "tipi_branch1",
					additional_index_count = 4,
					resource = "packed_tipi",
					use_default_model = true,
				},
				{
					key = "packed_tipi_2",
					default_model = "tipi_branch2",
					resource = "packed_tipi",
					use_default_model = true,
				},
				{
					key = "packed_tipi_3",
					default_model = "tipi_branch3",
					resource = "packed_tipi",
					use_default_model = true,
				},
				{
					key = "packed_tipi_4",
					default_model = "tipi_branch4",
					resource = "packed_tipi",
					use_default_model = true,
				},
				{
					key = "packed_tipi_5",
					default_model = "tipi_skin",
					resource = "packed_tipi",
					use_default_model = true,
				}
			}
		}
	}
}