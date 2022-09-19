local t = {}

function t:testSingle()
    local sample = Tiles.new()
    assertNotEquals(sample, nil)
    assertEquals(sample.len, 0)
    assertEquals(sample.xs, {})

    sample.append(1, 2)

    assertEquals(sample.xs[1], 1)
    assertEquals(sample.ys[1], 2)
    assertEquals(sample.len, 1)
end

return t
