local minusTiles = require "ns/mylib/DiffTiles"

local t = {}
function t:testSingles()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()
    sample1.append(1,1)
    sample2.append(2,2)

    local diff = minusTiles(sample1, sample2)

    assertEquals(diff.len, 2)
    assertEquals(diff.xs[1], 2)
    assertEquals(diff.xs[2], 1)
end

function t:testOneDiffLeft()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()
    sample1.append(1,1)
    sample1.append(2,2)
    sample2.append(2,2)

    local diff = minusTiles(sample1, sample2)

    assertEquals(diff.len, 1)
    assertEquals(diff.xs[1], 1)
end

function t:testOneDiffRight()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()
    sample1.append(2,2)
    sample2.append(2,2)
    sample2.append(1,1)

    local diff = minusTiles(sample1, sample2)

    assertEquals(diff.len, 1)
    assertEquals(diff.xs[1], 1)
end

function t:testDoubleDiff()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()

    sample1.append(1,1)
    sample2.append(1,1)

    sample1.append(2,2)
    sample2.append(2,2)

    sample1.append(3,3)
    sample2.append(4,4)
    sample1.append(5,5)
    sample2.append(6,6)

    local diff = minusTiles(sample1, sample2)

    assertEquals(diff.len, 4)
    assertEquals(diff.xs[1], 4)
    assertEquals(diff.xs[2], 6)
    assertEquals(diff.xs[3], 3)
    assertEquals(diff.xs[4], 5)
end

return t
