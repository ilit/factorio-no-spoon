local getSporeInjectorTiles = require "ns/SporeInjectorTiles"

return function(tick)
    local print = game.print
    local surface = game.surfaces["nauvis"]


    if tick % 60 == 0 then
        print("sdsd "..tick)
    end

    local es = getSporeInjectorTiles(surface)

    --

    -- // Dont bother with steps fixed in time. Make a step when performance allows.
    -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

    -- ### SporeInjections data update ###
    -- Eval the spore sources for a step
    -- Get Cell to Spore Injections table: (1,1)->3 injections, (1,2)->30
    -- Append to Cell->SporeInjections table

    -- Eval ContaminatedField by SporeInjections blurring\math. Each source is a layer to add?
    -- Eval ContaminatedTiles --TODO Apply noise distortion
    -- Try to update a tile. --TODO Skip update if it is already of correct name.
end
