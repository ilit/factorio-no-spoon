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
    assertEquals(multikey.get(tileToVals, 1, 1), 1)
    assertEquals(multikey.get(tileToVals, 2, 3), 1)
    assertEquals(multikey.get(tileToVals, 3, 3), nil)
end

return t
