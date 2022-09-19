local mergeTiles = require "ns/mylib/MergeTiles"

local t = {}
function t:testSingles()
    local sample1 = Tiles.new()
    local sample2 = Tiles.new()
    sample1.append(1,1)
    sample2.append(2,2)

    local merged = mergeTiles(sample1, sample2)

    assertEquals(merged.len, 2)
end

return t
