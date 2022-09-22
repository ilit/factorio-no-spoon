local evalSporeInjectors = require "ns/UpdateSporeInjectors/EvalSporeInjectors"
local evalEntitiesToTiles = require "ns/UpdateSporeInjectors/EntitiesToTiles"
local mergeTileToVals = require "ns/UpdateSporeInjectors/MergeTileToVals"
local appendsValuesToTiles = require "ns/UpdateSporeInjectors/AppendValuesToTiles"

return function(surface, prevSporeInjections)
    local sporeInjectors = evalSporeInjectors(surface)
    local sporeInjectorTiles = evalEntitiesToTiles(sporeInjectors)
    local newInjectionValues = appendsValuesToTiles(sporeInjectorTiles)

    local updatedSporeInjections = mergeTileToVals(prevSporeInjections, newInjectionValues)

    return updatedSporeInjections
end
