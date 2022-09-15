local evalSporeInjectors = require "ns/SporeInjectors"
local evalEntitiesToTiles = require "ns/EntitiesToTiles"
local mergeTileToVals = require "ns/MergeTileToVals"
local singleTileToValues = require "ns/SingleTileToValues"

return function(print, tick, surface, sporeInjectionsStorage)
    if tick % 60 ~= 0 then
        return
    end

    print("tick: "..tick)

    -- // Dont bother with steps fixed in time. Make a step when performance allows.
    -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

    --- ### SporeInjections gather data ###
    local sporeInjectors = evalSporeInjectors(surface)
    local sporeInjectorTiles = evalEntitiesToTiles(sporeInjectors)
    local newInjectionValues = singleTileToValues(sporeInjectorTiles)

    --- ### Append to SporeInjectionsStorage
    sporeInjectionsStorage = mergeTileToVals(sporeInjectionsStorage, newInjectionValues)

    local sis = sporeInjectionsStorage
    for i=1, sis.len do
        print(sis.xs[i] .. " " .. sis.ys[i].. " " .. sis.vals[i])
    end
    -- Eval ContaminatedField by SporeInjections blurring\math. Each source is a layer to add?
    -- Eval ContaminatedTiles
    -- Apply noise distortion
    -- Try to update a tile. --TODO Skip update if it is already of correct name.
end
