local updateSporeInjections = require "UpdateSporeInjections"
local smoothInjections = require "EvalSmoothInjections"

--- Global vars ---
sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        print("tick: "..tick)

        -- // Dont bother with steps fixed in time. Make a step when performance allows.
        -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

        local updatedSporeInjections = updateSporeInjections(
                game.surfaces["nauvis"],
                sporeInjections)
        sporeInjections = updatedSporeInjections

        local smoothedInjections = smoothInjections(sporeInjections)
        local si = smoothedInjections
        for i=1, si.len do
            print(si.xs[i] .. " " .. si.ys[i].. " " .. si.vals[i])
        end

        -- Eval ContaminatedTiles
        --Point point(100, 100);
        --for(int x = -radius; x <= radius; ++x)
        --for(int y = -radius; y <= radius; ++y)
        --if(x*x + y*y <= radius* radius)   {
        --points.insert(Point(x + point.x, y + point.y));
        --}


        -- Apply noise distortion
        -- Try to update a tile. --TODO Skip update if it is already of correct name.
    end
end
