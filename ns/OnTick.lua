local updateSporeInjections = require "UpdateSporeInjections"

sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        print("tick: "..tick)

        -- // Dont bother with steps fixed in time. Make a step when performance allows.
        -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

        sporeInjections = updateSporeInjections(
                game.surfaces["nauvis"],
                sporeInjections)

        local si = sporeInjections
        for i=1, si.len do
            print(si.xs[i] .. " " .. si.ys[i].. " " .. si.vals[i])
        end

        -- Eval ContaminatedField by SporeInjections blurring\math. Each source is a layer to add?
        -- Eval ContaminatedTiles
        -- Apply noise distortion
        -- Try to update a tile. --TODO Skip update if it is already of correct name.
    end
end
