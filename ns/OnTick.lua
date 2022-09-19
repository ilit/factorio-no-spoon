local evalUpdatedSporeInjections = require "EvalUpdatedSporeInjections"
local evalSmoothInjections = require "EvalSmoothInjections"
local evalContaminatedFields = require "EvalContaminatedFields"

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

        local smoothedInjections = evalSmoothInjections(sporeInjections)
        local si = smoothedInjections
        for i=1, si.len do
            print(si.xs[i] .. " " .. si.ys[i].. " " .. si.vals[i])
        end

        local contaminatedFields = evalContaminatedFields(smoothedInjections)
        -- Eval ContaminatedTiles

        -- Apply noise distortion
        -- Try to update a tile. --TODO Skip update if it is already of correct name.
    end
end
