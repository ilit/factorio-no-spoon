local evalUpdatedSporeInjections = require "ns/EvalUpdatedSporeInjections"
local evalContaminatedTiles = require "ns/EvalContaminatedTiles"
local evalNewSurfaceTileNames = require "ns/EvalNewSurfaceTileNames"
local evalDiffTiles = require "ns/mylib/DiffTiles"

--- Global vars ---
sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        print("")
        print("tick: "..tick)

        local surface = game.surfaces["nauvis"]

        local prof1
        if prof1 == nil then prof1 = game.create_profiler() end

        -- // Dont bother with steps fixed in time. Make a step when performance allows.
        -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

        local previousSporeInjections = sporeInjections
        local updatedSporeInjections = evalUpdatedSporeInjections(
                surface,
                previousSporeInjections)
        sporeInjections = updatedSporeInjections


        local prevContamPositions = evalContaminatedTiles(previousSporeInjections)
        local updatedContamPositions = evalContaminatedTiles(updatedSporeInjections)
        prof1.reset()
        local diffContamPositions = evalDiffTiles(prevContamPositions, updatedContamPositions)
        prof1.stop()
        print("diffContamPositions ")
        print(prof1)
        print("diffContamPositions.len " .. diffContamPositions.len)
        print("prevContamPositions.len " .. prevContamPositions.len)
        print("updatedContamPositions.len " .. updatedContamPositions.len)

        local tileToNames = evalNewSurfaceTileNames(diffContamPositions)
        surface.set_tiles(tileToNames)
    end
end
