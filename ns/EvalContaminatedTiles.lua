local evalSmoothInjections = require "ns/ContamFields/EvalSmoothInjections"
local evalContaminatedField = require "ns/ContamFields/EvalContaminatedField"

return function(sporeInjections)
    if sporeInjections == nil then error("smoothedInjections") end
    local si = evalSmoothInjections(sporeInjections)
    if si == nil then error("smoothedInjections") end

    --- Eval Contaminated Fields
    local contaminatedFields = Tiles.new()
    for i=1, si.len do
        local x = si.xs[i]
        local y = si.ys[i]
        local strength = si.vals[i]
        local field = evalContaminatedField(x, y, strength)
        table.insert(contaminatedFields, field)
    end

    -- TODO Merge

    -- TODO Apply noise distortion
end
