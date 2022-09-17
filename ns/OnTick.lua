local updateSporeInjections = require "UpdateSporeInjections"

sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        -- // Dont bother with steps fixed in time. Make a step when performance allows.
        -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

        sporeInjections = updateSporeInjections(
                game.print,
                tick,
                game.surfaces["nauvis"],
                sporeInjections)

        -- Eval ContaminatedField by SporeInjections blurring\math. Each source is a layer to add?
        -- Eval ContaminatedTiles
        -- Apply noise distortion
        -- Try to update a tile. --TODO Skip update if it is already of correct name.
    end
end
