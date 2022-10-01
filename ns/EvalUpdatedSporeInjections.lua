local evalSporeInjectors = require "ns/UpdateSporeInjectors/EvalSporeInjectors"
local evalEntitiesToTiles = require "ns/UpdateSporeInjectors/EntitiesToTiles"
local mergeTileToVals = require "ns/UpdateSporeInjectors/MergeTileToVals"
local appendsValuesToTiles = require "ns/UpdateSporeInjectors/AppendValuesToTiles"

return function(surface, prevSporeInjections)
    --local sporeInjectors = evalSporeInjectors(surface)
    --local sporeInjectorTiles = evalEntitiesToTiles(sporeInjectors)
    local sporeInjectorTiles = {{x=1,y=1},{x=11,y=11},{x=22,y=22}}
    local newInjectionValues = appendsValuesToTiles(sporeInjectorTiles)
    local updatedSporeInjections = mergeTileToVals(prevSporeInjections, newInjectionValues)

    return updatedSporeInjections
end
