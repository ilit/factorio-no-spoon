local ontick = require "ns/ontick"

local registerEvents = function()
    script.on_event(defines.events.on_tick, function(_)
        ontick(game.print)
        -- Dont bother with steps fixed in time. Make a step when performance allows.

        -- SporeInjections data update
            -- Get Cell to Spore Injections table: (1,1)->3 injections, (1,2)->30
            -- Eval the spore sources for a step
            -- Append to Cell->SporeInjections table

        -- Eval ContaminatedField by SporeInjections blurring\math. Each source is a layer to add.
        -- Eval ContaminatedTiles
        -- Try to update a tile. Skip update if it is already of correct name.
    end)
end

local init = function()
    registerEvents()
end

script.on_init(init)
script.on_load(init)

if script.active_mods["gvv"] then require("__gvv__.gvv")() end
