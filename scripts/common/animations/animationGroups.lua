local mod = {
    loadOrder = 1,
}

function mod:onload(animationGroups)
    table.insert(animationGroups.groupNames, "bison")
end


return mod