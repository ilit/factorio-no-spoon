local evalSporeInjectors = require "ns/SporeInjectors"
local evalEntitiesToTiles = require "ns/EntitiesToTiles"

return function(print, tick, surface)
    if tick % 60 ~= 0 then
        return
    end

    print("sdsd "..tick)

    -- // Dont bother with steps fixed in time. Make a step when performance allows.
    -- // Dont exec steps faster than minimum ticks. Maintain startingTickOfTheLastStep.

    -- ### SporeInjections data update ###
    -- Eval the spore sources for a step
    local sporeInjectors = evalSporeInjectors(surface)
    local sporeInjectorTiles = evalEntitiesToTiles(sporeInjectors)
    for i,e in ipairs(sporeInjectorTiles) do
        print(e.x .. " " .. e.y)
    end



    -- Eval tiles of spore sources
    -- Get Stored Cell to Spore Injections table: (1,1)->3 injections, (1,2)->30
    -- Append to Cell->SporeInjections table

    -- Eval ContaminatedField by SporeInjections blurring\math. Each source is a layer to add?
    -- Eval ContaminatedTiles
    -- Apply noise distortion
    -- Try to update a tile. --TODO Skip update if it is already of correct name.
end
