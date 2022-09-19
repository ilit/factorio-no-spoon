local evalSmoothInjections = require "ns/ContamFields/EvalSmoothInjections"
local evalContaminatedFields = require "ns/ContamFields/EvalContaminatedFields"
local mergeFields = require "ns/mylib/MergeTiles"

return function(sporeInjections)
    local smoothedInjections = evalSmoothInjections(sporeInjections)
    local contaminatedFields = evalContaminatedFields(smoothedInjections)

    if contaminatedFields == nil then error("contaminatedFields == nil") end

    local mergedField = Tiles.new()
    for i=1, contaminatedFields.len do
        mergedField = mergeFields(mergedField, contaminatedFields[i])
    end

    return mergedField
    -- TODO Apply noise distortion
end
