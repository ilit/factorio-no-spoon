local evalSmoothInjections = require "ns/ContamFields/EvalSmoothInjections"
local evalContaminatedFields = require "ns/ContamFields/EvalContaminatedFields"
local mergeFields = require "ns/mylib/MergeTiles"

return function(sporeInjections)
    local smoothedInjections = evalSmoothInjections(sporeInjections)
    print("smoothedInjections.len " .. smoothedInjections.len)

    local contaminatedFields = evalContaminatedFields(smoothedInjections)
    print("contaminatedFields.len " .. contaminatedFields.len)

    local mergedField = Tiles.new()
    for i=1, contaminatedFields.len do
        mergedField = mergeFields(mergedField, contaminatedFields[i])
    end
    print("mergedField.len " .. mergedField.len)

    return mergedField
    -- TODO Apply noise distortion
end
