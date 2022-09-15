local ontick = require "ns/OnTick"
ttv = require "ns/TileToValues"

local registerEvents = function()
    script.on_event(defines.events.on_tick, function(e)
        ontick(game.print, e.tick, game.surfaces["nauvis"], sporeInjectionsStorage)
    end)
end

local init = function()
    sporeInjectionsStorage = ttv.new()

    registerEvents()
end

script.on_init(init)
script.on_load(init)

if script.active_mods["gvv"] then require("__gvv__.gvv")() end
