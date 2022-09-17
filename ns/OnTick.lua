local updateSporeInjectors = require "UpdateSporeInjectors"

sporeInjections = ttv.new()

return function(tick)
    if tick % 60 == 0 then
        sporeInjections = updateSporeInjectors(
                game.print,
                tick,
                game.surfaces["nauvis"],
                sporeInjections)
    end
end
