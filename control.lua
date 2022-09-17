local ontick = require "ns/OnTick"
ttv = require "ns/TileToValues"

sporeInjections = {}

local registerEvents = function()
    script.on_event(defines.events.on_tick, function(e)
        if e.tick % 60 == 0 then
            sporeInjections = ontick(
                    game.print,
                    e.tick,
                    game.surfaces["nauvis"],
                    sporeInjections)
        end
    end)
end

local init = function()
    sporeInjections = ttv.new()

    registerEvents()
end

script.on_init(init)
script.on_load(init)

if script.active_mods["gvv"] then require("__gvv__.gvv")() end
