local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3

return {
	description = {
		identifier = "bison"
	},
	components = {
		hs_object = {
			model = "bison",
			props = {
				projectileAimHeightOffsetMeters = 0.2,
				hasPhysics = false,
				ignoreBuildRay = true,
				markerPositions = {
					{
						worldOffset = vec3(0.0, mj:mToP(2.8), 0.0)
					}
				},
			}
		},
		hs_mob = {
			dead_object = "deadMammoth", -- TODO
			animation_group = "bison",
			props = {
				initialHealth = 7.9,
				spawnFrequency = 0.5,
				spawnDistance = mj:mToP(600.0),
				reactDistance = mj:mToP(50.0),
				runDistance = mj:mToP(15.0),
				agroDistance = mj:mToP(1.0),
				attackDistance = mj:mToP(2.0),
				agroTimerDuration = 3.0,
				aggresionLevel = 1,
				pathFindingRayRadius = mj:mToP(1.0),
				pathFindingRayYOffset = mj:mToP(2.0),
				walkSpeed = mj:mToP(2.5),
				runSpeedMultiplier = 4.0,
				embedBoxHalfSize = vec3(0.5,1.0,0.5),
				maxSoundDistance2 = mj:mToP(100.0) * mj:mToP(100.0),
				soundVolume = 2.0,
				soundRandomBaseName = "mammoth",
				soundRandomBaseCount = 6,
				soundAngryBaseName = "mammothAngry",
				soundAngryBaseCount = 3,
				deathSound = "mammothAngry1",

				deathAnimation = "die",
				runAnimation = "run",
				idleAnimations = {
					"idle",
					"idle"
				},
				agroIdleAnimations = {
					"angryIdle",
					"angryIdle",
				},
				sleepAnimations = {
					"idle",
					"idle"
				},
				agroWalkAnimation = "run",
			}
		}
	}
}