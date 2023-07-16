
local serverBison = mjrequire "server/objects/serverBison"

local mod = {
    loadOrder = 1,
}

function mod:onload(serverMob)
    
    local prevInit = serverMob.init
    serverMob.init = function(serverMob_, serverGOM_, serverWorld_, serverSapien_, planManager_)
        prevInit(serverMob_, serverGOM_, serverWorld_, serverSapien_, planManager_)
        serverBison:init(serverGOM_, serverWorld_, serverMob)
    end
end

return mod