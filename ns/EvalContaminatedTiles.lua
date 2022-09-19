local evalSmoothInjections = require "ns/ContamFields/EvalSmoothInjections"
local evalContaminatedFields = require "ns/ContamFields/EvalContaminatedFields"
local mergeFields = require "ns/mylib/MergeTiles"

return function(sporeInjections)
    local smoothedInjections = evalSmoothInjections(sporeInjections)

    local contaminatedFields = evalContaminatedFields(smoothedInjections)

    local mergedField = Tiles.new()
    for _, f in pairs(contaminatedFields) do
        mergedField = mergeFields(mergedField, f)
    end

    return mergedField
    -- TODO Apply noise distortion
end
