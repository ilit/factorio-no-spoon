local evalContaminatedField = require("ns/ContamFields/EvalContaminatedField")

local t = {}

function t:testZero()
    local field = evalContaminatedField(0, 0, 0)
    assertEquals(field.len, 0)
end

function t:testDist1()
    local field = evalContaminatedField(0, 0, 1)
    assertEquals(field.len, 1)
    assertEquals(field.xs[1], 0)
    assertEquals(field.ys[1], 0)
end

function t:testOffset()
    local field = evalContaminatedField(1, 2, 1)
    assertEquals(field.len, 1)
    assertEquals(field.xs[1], 1)
    assertEquals(field.ys[1], 2)
end

function t:testDist2()
    local field = evalContaminatedField(0, 0, 2)
    assertEquals(field.len, 5)
    assertEquals(field.xs[1], -1)
    assertEquals(field.ys[1], 0)

    assertEquals(field.xs[2], 0)
    assertEquals(field.ys[2], -1)
end

function t:testDist3()
    local field = evalContaminatedField(0, 0, 3)
    assertEquals(field.len, 13)
end

return t