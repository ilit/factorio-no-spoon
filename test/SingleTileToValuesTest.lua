local singleTileToValues = require "ns/SingleTileToValues"

local t = {}

function t:setup()
end

function t:teardown()
end

function t:testSingle()
    local tiles = {{x=1,y=1},{x=2,y=3}}

    local tileToVals = singleTileToValues(tiles)

    assertNotEquals(tileToVals, nil)
    assertEquals(tileToVals.get(1, 1), 1)
    assertEquals(tileToVals.get(2, 3), 1)
    assertEquals(tileToVals.get(11, 11), 0)
end

return t
