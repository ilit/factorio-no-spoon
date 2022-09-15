return function(a1, a2)
    if (a1 == nil) then error("a1 == nil") end
    if (a2 == nil) then error("a2 == nil") end
    if (multikey == nil) then error("multikey == nil") end
    if (multikey.tuples == nil) then error("multikey.tuples == nil") end

    local res = {}

    for _ ,x, y, val in multikey.tuples(a1) do
        multikey.put(res, x, y, val)
    end

    for _ ,x, y, a2val in multikey.tuples(a2) do
        local prevVal = multikey.get(res, x, y)
        if (prevVal == nil) then prevVal = 0 end
        multikey.put(res, x, y, prevVal + a2val)
    end

    return res
end
