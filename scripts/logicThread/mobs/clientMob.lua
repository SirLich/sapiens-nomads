local mob = mjrequire "common/mob/mob"

local mod = {
    loadOrder = 1,
}

local clientBison = {}
clientBison.serverUpdate = function(object, notifications, pos, rotation, scale, incomingServerStateDelta) end
clientBison.objectWasLoaded = function(object, pos, rotation, scale) end
function clientBison:update(object, dt, speedMultiplier) end
function clientBison:init(clientGOM_) end

function mod:onload(clientMob)
    clientMob.mobClassMap[mob.types.bison.index] = clientBison
end

return mod