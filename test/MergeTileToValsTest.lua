local mergeTileToVals = require "ns/UpdateSporeInjectors/MergeTileToVals"

local t = {}

function t:setup()
end

function t:teardown()
end

function t:testSimple()
    local ttv1 = ttv.new()
    ttv1.append(1, 1, 1)
    local ttv2 = ttv.new()
    ttv2.append(1, 1, 3)

    local merged = mergeTileToVals(ttv1, ttv2)

    assertNotEquals(merged, nil)
    assertEquals(merged.get(1, 1), 4)
    assertEquals(merged.get(3, 3), 0)
end

function t:testComplex()
    local ttv1 = ttv.new()
    ttv1.append(1, -1, 1)
    ttv1.append(2, -2, 2)
    ttv1.append(3, -3, 3)
    local ttv2 = ttv.new()
    ttv2.append(1, -1, -3)
    ttv2.append(2, -2, 4)
    ttv2.append(4, -4, 4)

    local merged = mergeTileToVals(ttv1, ttv2)

    assertNotEquals(merged, nil)
    assertEquals(merged.get(1, -1), -2)
    assertEquals(merged.get(2, -2), 6)
    assertEquals(merged.get(3, -3), 3)
    assertEquals(merged.get(4, -4), 4)
end

return t
