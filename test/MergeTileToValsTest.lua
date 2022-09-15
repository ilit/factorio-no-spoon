local mergeTileToVals = require "ns/MergeTileToVals"

local t = {}

function t:setup()
end

function t:teardown()
end

function t:testSimple()
    local ttv1 = {}
    multikey.put(ttv1, 1, 1, 1)
    multikey.put(ttv1, 2, 2, 1)
    local ttv2 = {}
    multikey.put(ttv2, 1, 1, 1)
    multikey.put(ttv2, 2, 2, 1)

    local merged = mergeTileToVals(ttv1, ttv2)

    assertNotEquals(merged, nil)
    assertEquals(multikey.get(merged, 1, 1), 2)
    assertEquals(multikey.get(merged, 2, 2), 2)
    assertEquals(multikey.get(merged, 3, 3), nil)
end

function t:testComplex()
    local ttv1 = {}
    multikey.put(ttv1, 1, -1, 1)
    multikey.put(ttv1, 2, -2, 2)
    multikey.put(ttv1, 3, -3, 3)
    local ttv2 = {}
    multikey.put(ttv2, 1, -1, -3)
    multikey.put(ttv2, 2, -2, 4)
    multikey.put(ttv1, 4, -4, 4)

    local merged = mergeTileToVals(ttv1, ttv2)

    assertNotEquals(merged, nil)
    assertEquals(multikey.get(merged, 1, -1), -2)
    assertEquals(multikey.get(merged, 2, -2), 6)
    assertEquals(multikey.get(merged, 3, -3), 3)
    assertEquals(multikey.get(merged, 4, -4), 4)
end

return t
