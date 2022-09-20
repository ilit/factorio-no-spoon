local evalUpdatedSporeInjections = require "ns/EvalUpdatedSporeInjections"
local evalContaminatedTiles = require "ns/EvalContaminatedTiles"
local updateSurfaceTiles = require "ns/UpdateSurfaceTiles"

--- Global vars ---
sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        print("tick: "..tick)
        local surface = game.surfaces["nauvis"]

        -- // Dont bother with steps fixed in time. Make a step when performance allows.
        -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

        local updatedSporeInjections = evalUpdatedSporeInjections(
                surface,
                sporeInjections)
        sporeInjections = updatedSporeInjections

        local contaminatedTiles = evalContaminatedTiles(sporeInjections)
        print(contaminatedTiles.len)

        --- Debug Stub
        contaminatedTiles = Tiles.new()
        local RAD = 30
        for x=-RAD, RAD do
            for y=-RAD, RAD do
                contaminatedTiles.append(x, y)
            end
        end

        updateSurfaceTiles(surface, contaminatedTiles)

        -- Try to update a tile. --TODO Skip update if it is already of correct name.
    end
end
