--- Global Libs ---
ttv = require "ns/mylib/TileToValues"
print = {}
---

local ontick = require "ns/OnTick"

local registerEvents = function()
    script.on_event(defines.events.on_tick, function(e)
        ontick(e.tick)
    end)
end

local init = function()
    print = game.print
    registerEvents()
end

script.on_init(init)
script.on_load(init)

if script.active_mods["gvv"] then require("__gvv__.gvv")() end
