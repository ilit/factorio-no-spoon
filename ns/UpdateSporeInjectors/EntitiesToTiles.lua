return function(entities)
    local tiles = {}
    for i,e in ipairs(entities) do
        local tile = e.bounding_box.left_top
        tiles[i] = { x = math.floor(tile.x),
                     y = math.floor(tile.y) }
    end

    return tiles
end
