return function(tiles)
    local res = ttv.new()

    for _,t in ipairs(tiles) do
        res.append(t.x, t.y, 1)
    end

    return res
end
