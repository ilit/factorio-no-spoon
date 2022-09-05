return function(surface)
    local entities = surface.find_entities_filtered{name = {"crash-site-spaceship"}}
    return entities[1]
end
