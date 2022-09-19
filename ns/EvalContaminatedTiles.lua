local evalSmoothInjections = require "ns/ContamFields/EvalSmoothInjections"
local evalContaminatedFields = require "ns/ContamFields/EvalContaminatedFields"

return function(sporeInjections)
    local smoothedInjections = evalSmoothInjections(sporeInjections)
    local contaminatedFields = evalContaminatedFields(smoothedInjections)


    -- TODO Merge

    -- TODO Apply noise distortion
end
