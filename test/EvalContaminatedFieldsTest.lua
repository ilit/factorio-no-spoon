local evalContaminatedFields = require("ns/ContamFields/EvalContaminatedFields")

local t = {}

function t:testSingle()
    local sporeInjs = ttv.new()
    sporeInjs.append(1,1,1)
    local contamFields = evalContaminatedFields(sporeInjs)
    assertNotEquals(contamFields[1], nil)
    assertEquals(contamFields[2], nil)

    local field1 = contamFields[1]
    assertEquals(field1.len, 1)
    assertEquals(field1.xs[1], 1)
    assertEquals(field1.ys[1], 1)
end

function t:testTwoSingleFields()
    local sporeInjs = ttv.new()
    sporeInjs.append(1,1,1)
    sporeInjs.append(2,2,1)
    local contamFields = evalContaminatedFields(sporeInjs)
    assertNotEquals(contamFields[1], nil)
    assertNotEquals(contamFields[2], nil)
    assertEquals(contamFields[3], nil)

    local field1 = contamFields[1]
    assertEquals(field1.len, 1)
    assertEquals(field1.xs[1], 1)
    assertEquals(field1.ys[1], 1)

    local field2 = contamFields[2]
    assertEquals(field2.len, 1)
    assertEquals(field2.xs[1], 2)
    assertEquals(field2.ys[1], 2)
end

function t:testTwoBigFields()
    local sporeInjs = ttv.new()
    sporeInjs.append(111,111,11)
    sporeInjs.append(222,222,22)
    local contamFields = evalContaminatedFields(sporeInjs)
    assertNotEquals(contamFields[1], nil)
    assertNotEquals(contamFields[2], nil)
    assertEquals(contamFields[3], nil)

    assertTrue(contamFields[1].len > 11)
    assertTrue(contamFields[2].len > 11)
end

return t