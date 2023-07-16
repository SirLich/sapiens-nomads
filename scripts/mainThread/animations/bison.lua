-- different types of animations are specified in common/animations, so the animations types can be assigned and used across all threads.
-- the list of keyframes here correspond with animation frames in the model file. So the moa model file contains a ~30 frame long animation, with each frame containing a unique pose.
-- Then those poses are named here, in the ordered keyframes enum below, and combined algorithmically in this lua module, for each animation specified in common/animations/moa.

-- proceduralType = 1 means that it will shuffle the keyframes. Without this, the animations are performed in the order given
-- for { keyframes.base, 0.4, {randomVariance = 0.4} }, the first parameter is the pose/keyframe, the second is the duration, and the third is a table of additional options
-- the engine will interpolate to the next key frame over the duration given.

-- additional options:
-- "randomVariance" is added to the base time. result = duration + randomFloatBetweenZeroAndOne * randomVariance
-- "trigger" calls a function every time that keyframe is hit, used for sounds and particle effects
-- "composites" can also be used here, to apply additional animations to individual specified bones over the top, eg. when a sapien waves while doing other things. See sapienCommon for an example

local model = mjrequire "common/model"
local animationGroups = mjrequire "common/animations/animationGroups"
local rng = mjrequire "common/randomNumberGenerator"
local audio = mjrequire "mainThread/audio"

local mainThreadAnimationGroup = {}

local keyframes = mj:enum {
    "base",
    "angryIdle1",
    "angryIdle2",
    "angryIdle3",
    "angryIdle4",
    "transition1",
    "walk1",
    "walk2",
    "walk3",
    "transition2",
    "attack1",
    "attack2",
    "transition3",
}


local animationTypes = animationGroups.bison.animations

mainThreadAnimationGroup.modelTypeIndex = model:modelIndexForModelNameAndDetailLevel("bison", 1)
mainThreadAnimationGroup.default = animationTypes.idle

-- local stepVolume = 0.2
-- local stepIndex = 1
-- local function playRandomSound(pos, name, max)
--     local pitchOffset = 1.0 + (rng:randomValue() - 0.5) * 0.2
--     if audio:playWorldSound("audio/sounds/" .. name .. mj:tostring(stepIndex) .. ".wav", pos, stepVolume, pitchOffset, 130) then
--         stepIndex = stepIndex + 1
--         if rng:randomBool() then
--             stepIndex = stepIndex + 1
--         end

--         if stepIndex > max then
--             stepIndex = (stepIndex % max) + 1
--         end
--     end
-- end

-- local function stepTrigger(objectPos)
--     playRandomSound(objectPos, "moaStep", 3)
-- end

mainThreadAnimationGroup.animations = {
    [animationTypes.angryIdle] = {
        keyframes = {
            { keyframes.base, 0.4, {randomVariance = 0.4} },
            { keyframes.angryIdle1, 0.4, {randomVariance = 0.4} },
            { keyframes.angryIdle2, 0.4, {randomVariance = 1.4} },
            { keyframes.angryIdle3, 0.4, {randomVariance = 1.4} },
            { keyframes.angryIdle4, 0.4, {randomVariance = 1.4} },
            { keyframes.base, 0.4, {randomVariance = 0.4} },
        },
    },
    [animationTypes.idle] = {
        keyframes = {
            { keyframes.base, 0.4, {randomVariance = 0.4} },
            { keyframes.angryIdle1, 0.4, {randomVariance = 0.4} },
            { keyframes.angryIdle2, 0.4, {randomVariance = 1.4} },
            { keyframes.angryIdle3, 0.4, {randomVariance = 1.4} },
            { keyframes.angryIdle4, 0.4, {randomVariance = 1.4} },
            { keyframes.base, 0.4, {randomVariance = 0.4} },
        },
    },
    [animationTypes.walk] = {
        keyframes = {
            { keyframes.base, 0.4, {randomVariance = 0.4} },
            { keyframes.walk1, 0.4, {} },
            { keyframes.walk2, 0.2 },
            { keyframes.walk3, 0.4, {} },
            { keyframes.base, 0.4, {randomVariance = 0.4} },
        },
    },
    [animationTypes.run] = {
        keyframes = {
            { keyframes.base, 0.4, {randomVariance = 0.4} },
            { keyframes.walk1, 0.4, {} },
            { keyframes.walk2, 0.2 },
            { keyframes.walk3, 0.4, {} },
            { keyframes.base, 0.4, {randomVariance = 0.4} },
        },
    },
    [animationTypes.attack] = {
        keyframes = {
            { keyframes.base, 0.4, {randomVariance = 0.4} },
            { keyframes.attack1, 0.4, {randomVariance = 0.4} },
            { keyframes.attack2, 0.4, {randomVariance = 0.4} },
            { keyframes.base, 0.4, {randomVariance = 0.4} },

        },
    },
    [animationTypes.die] = {
        keyframes = {
            { keyframes.base, 0.4, {randomVariance = 0.4} },
        },
    },
    [animationTypes.dead] = {
        keyframes = {
            { keyframes.base, 0.4, {randomVariance = 0.4} },
        },
    },
}

--- Currently duplicates

return mainThreadAnimationGroup
