local tableConcat = function(t1,t2)
    for i=1,#t2 do
        t1[#t1+1] = t2[i]
    end
    return t1
end

return function(surface)
    local a = surface.find_entities_filtered{name = "stone-furnace"}
    local b = surface.find_entities_filtered{name = "crash-site-spaceship"}
    local c = surface.find_entities_filtered{name = "crash-site-spaceship-wreck-big-2"}

    local ab = tableConcat(a, b)
    local abc = tableConcat(ab, c)
    return abc
end