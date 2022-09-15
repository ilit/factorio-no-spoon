return function(tiles)
    local res = {}
    for _,t in ipairs(tiles) do
        multikey.put(res, t.x, t.y, 1)
    end

    return res
end
