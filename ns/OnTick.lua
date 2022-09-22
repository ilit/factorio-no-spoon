local evalUpdatedSporeInjections = require "ns/EvalUpdatedSporeInjections"
local evalContaminatedTiles = require "ns/EvalContaminatedTiles"
local evalNewSurfaceTileNames = require "ns/EvalNewSurfaceTileNames"

--- Global vars ---
sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        print("tick: "..tick)

        local surface = game.surfaces["nauvis"]

        -- // Dont bother with steps fixed in time. Make a step when performance allows.
        -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

        local previousSporeInjections = sporeInjections
        local updatedSporeInjections = evalUpdatedSporeInjections(
                surface,
                previousSporeInjections)
        sporeInjections = updatedSporeInjections

        local prevContamPositions = evalContaminatedTiles(previousSporeInjections)
        local newContamPositions = evalContaminatedTiles(updatedSporeInjections)
        print(newContamPositions.len)

        --- Debug Stub
        newContamPositions = Tiles.new()
        local RAD = 35
        for x=-RAD, RAD do
            for y=-RAD, RAD do
                newContamPositions.append(x, y)
            end
        end

        local tileToNames = evalNewSurfaceTileNames(newContamPositions)
        -- TODO Previously
        surface.set_tiles(tileToNames)

        -- Try to update a tile. --TODO Skip update if it is already of correct name.
    end
end
