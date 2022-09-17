local evalSporeInjectors = require "ns/UpdateSporeInjectors/EvalSporeInjectors"
local evalEntitiesToTiles = require "ns/UpdateSporeInjectors/EntitiesToTiles"
local mergeTileToVals = require "ns/UpdateSporeInjectors/MergeTileToVals"
local appendsValuesToTiles = require "ns/UpdateSporeInjectors/AppendValuesToTiles"

return function(print, tick, surface, prevSporeInjections)
    print("tick: "..tick)

    -- // Dont bother with steps fixed in time. Make a step when performance allows.
    -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

    --- ### SporeInjections gather data ###
    local sporeInjectors = evalSporeInjectors(surface)
    local sporeInjectorTiles = evalEntitiesToTiles(sporeInjectors)
    local newInjectionValues = appendsValuesToTiles(sporeInjectorTiles)

    --- ### Append to SporeInjectionsStorage
    -- TODO fix ttv1 == nil
    local updatedSporeInjections = mergeTileToVals(prevSporeInjections, newInjectionValues)

    local usi = updatedSporeInjections
    for i=1, usi.len do
        print(usi.xs[i] .. " " .. usi.ys[i].. " " .. usi.vals[i])
    end
    -- Eval ContaminatedField by SporeInjections blurring\math. Each source is a layer to add?
    -- Eval ContaminatedTiles
    -- Apply noise distortion
    -- Try to update a tile. --TODO Skip update if it is already of correct name.

    return updatedSporeInjections
end
