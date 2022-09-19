local evalUpdatedSporeInjections = require "ns/EvalUpdatedSporeInjections"
local evalContaminatedTiles = require "ns/EvalContaminatedTiles"

--- Global vars ---
sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        print("tick: "..tick)

        -- // Dont bother with steps fixed in time. Make a step when performance allows.
        -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

        local updatedSporeInjections = evalUpdatedSporeInjections(
                game.surfaces["nauvis"],
                sporeInjections)
        sporeInjections = updatedSporeInjections

        local contaminatedTiles = evalContaminatedTiles(sporeInjections)

        --local t = contaminatedTiles
        --for i=1, t.len do
        --    print(t.xs[i] .. " " .. t.ys[i])
        --end

        -- Try to update a tile. --TODO Skip update if it is already of correct name.
    end
end
