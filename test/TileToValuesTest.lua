local ttv = require "ns/TileToValues"

local t = {}

function t:testSingle()
    local sample = ttv.new()
    assertNotEquals(sample, nil)
    assertEquals(sample.len, 0)
    assertEquals(sample.vals, {})

    sample.append(1, 2, 3)

    assertEquals(sample.xs[1], 1)
    assertEquals(sample.ys[1], 2)
    assertEquals(sample.vals[1], 3)
    assertEquals(sample.len, 1)

    assertEquals(sample.get(1, 2), 3)
end

function t:testAppend()
    local sample = ttv.new()
    assertNotEquals(sample, nil)

    assertEquals(sample.len, 0)
    sample.append(1, 2, 3)
    assertEquals(sample.xs[1], 1)
    assertEquals(sample.ys[1], 2)
    assertEquals(sample.vals[1], 3)
    assertEquals(sample.len, 1)

    sample.append(1, 2, 3)
    assertEquals(sample.xs[1], 1)
    assertEquals(sample.ys[1], 2)
    assertEquals(sample.vals[1], 6)
    assertEquals(sample.len, 1)

    assertEquals(sample.get(1, 2), 6)
end

return t
