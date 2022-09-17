local evalSporeInjectors = require "ns/UpdateSporeInjectors/EvalSporeInjectors"
local evalEntitiesToTiles = require "ns/UpdateSporeInjectors/EntitiesToTiles"
local mergeTileToVals = require "ns/UpdateSporeInjectors/MergeTileToVals"
local appendsValuesToTiles = require "ns/UpdateSporeInjectors/AppendValuesToTiles"

return function(print, tick, surface, prevSporeInjections)
    print("tick: "..tick)

    --- ### SporeInjections gather data ###
    local sporeInjectors = evalSporeInjectors(surface)
    local sporeInjectorTiles = evalEntitiesToTiles(sporeInjectors)
    local newInjectionValues = appendsValuesToTiles(sporeInjectorTiles)

    --- ### Append to SporeInjectionsStorage
    local updatedSporeInjections = mergeTileToVals(prevSporeInjections, newInjectionValues)

    local usi = updatedSporeInjections
    for i=1, usi.len do
        print(usi.xs[i] .. " " .. usi.ys[i].. " " .. usi.vals[i])
    end

    return updatedSporeInjections
end
