return function(surface, contamTiles)
    local reformattedTiles = {}

    for i=1, contamTiles.len do
        local name
        local x = contamTiles.xs[i]
        local y = contamTiles.ys[i]

        if x % 3 == 0 then
            name = "vegetation-purple-grass-2"
        else
            name = "vegetation-yellow-grass-2"
        end

        table.insert(reformattedTiles, { name = name,
                                         position = {x=x,y=y} })
    end

    surface.set_tiles(reformattedTiles)
end
