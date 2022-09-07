local getSporeInjectorTiles = require "ns/SporeInjectorTiles"

local t = {}

function t:setup()
end

function t:teardown()
end

function t:testSingle()
    local surface = {}
    surface.find_entities_filtered = function()
        return {x=1,}
    end
    getSporeInjectorTiles(surface)
end

function t:testInfElevation()
    assertEquals(1,1)
end

function t:testNegativeError()
    --assertEquals(assert_error(elevationToStep(-12)))
end

return t
