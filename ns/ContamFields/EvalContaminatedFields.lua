local evalContaminatedField = require "ns/ContamFields/EvalContaminatedField"

return function(sporeInjs)
    local contaminatedFields = Tiles.new()
    for i=1, sporeInjs.len do
        local x = sporeInjs.xs[i]
        local y = sporeInjs.ys[i]
        local strength = sporeInjs.vals[i]
        local field = evalContaminatedField(x, y, strength)
        table.insert(contaminatedFields, field)
    end

    return contaminatedFields
end
