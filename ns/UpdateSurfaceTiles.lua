local biomeSeedGenerator = require "ns/biome/BiomeSeedGenerator"

return function(surface, contamTiles)
    local reformattedTiles = {}

    for i=1, contamTiles.len do
        local x = contamTiles.xs[i]
        local y = contamTiles.ys[i]
        local pos = { x=x, y=y }

        local name
        local randomBiomeSeedFloat = biomeSeedGenerator(pos)
        if     randomBiomeSeedFloat < 0.1 then name = "vegetation-mauve-grass-2"
        elseif randomBiomeSeedFloat < 0.2 then name = "vegetation-red-grass-2"
        elseif randomBiomeSeedFloat < 0.4 then name = "vegetation-blue-grass-2"
        elseif randomBiomeSeedFloat < 0.6 then name = "vegetation-yellow-grass-2"
        elseif randomBiomeSeedFloat < 0.8 then name = "vegetation-violet-grass-2"
        else name = "vegetation-purple-grass-2"
        end

        table.insert(reformattedTiles, { name = name,
                                         position = pos })
    end

    surface.set_tiles(reformattedTiles)
end
