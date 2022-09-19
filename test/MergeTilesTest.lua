local mergeTiles = require "ns/mylib/MergeTiles"

local t = {}
function t:testSingles()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()
    sample1.append(1,1)
    sample2.append(2,2)

    local merged = mergeTiles(sample1, sample2)

    assertEquals(merged.len, 2)
    assertEquals(merged.xs[1], 1)
    assertEquals(merged.xs[2], 2)
end

function t:testDouble()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()
    sample1.append(1,1)
    sample1.append(2,2)
    sample2.append(3,3)
    sample2.append(4,4)

    local merged = mergeTiles(sample1, sample2)

    assertEquals(merged.len, 4)
    assertEquals(merged.xs[1], 1)
    assertEquals(merged.xs[2], 2)
    assertEquals(merged.xs[3], 3)
    assertEquals(merged.xs[4], 4)
end

function t:testDuplicates()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()

    sample1.append(1,1)
    sample1.append(2,2)
    sample1.append(3,3)

    sample2.append(2,2)
    sample2.append(3,3)
    sample2.append(4,4)

    local merged = mergeTiles(sample1, sample2)

    assertEquals(merged.len, 4)
    assertEquals(merged.xs[1], 1)
    assertEquals(merged.xs[2], 2)
    assertEquals(merged.xs[3], 3)
    assertEquals(merged.xs[4], 4)
end

return t
