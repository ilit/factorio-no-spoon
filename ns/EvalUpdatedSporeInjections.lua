local evalSporeInjectors = require "ns/UpdateSporeInjectors/EvalSporeInjectors"
local evalEntitiesToTiles = require "ns/UpdateSporeInjectors/EntitiesToTiles"
local mergeTileToVals = require "ns/UpdateSporeInjectors/MergeTileToVals"
local appendsValuesToTiles = require "ns/UpdateSporeInjectors/AppendValuesToTiles"

return function(surface, prevSporeInjections)
    local prof1
    if prof1 == nil then prof1 = game.create_profiler() end

    prof1.reset()
    local sporeInjectors = evalSporeInjectors(surface)
    prof1.stop()
    print("evalSporeInjectors ")
    print(prof1)

    prof1.reset()
    local sporeInjectorTiles = evalEntitiesToTiles(sporeInjectors)
    prof1.stop()
    print("evalEntitiesToTiles ")
    print(prof1)

    prof1.reset()
    local newInjectionValues = appendsValuesToTiles(sporeInjectorTiles)
    prof1.stop()
    print("appendsValuesToTiles ")
    print(prof1)

    prof1.reset()
    local updatedSporeInjections = mergeTileToVals(prevSporeInjections, newInjectionValues)
    prof1.stop()
    print("mergeTileToVals ")
    print(prof1)

    return updatedSporeInjections
end
