return function(tiles)
    -- TODO http://siffiejoe.github.io/lua-multikey/
    local res = {}
    for i,t in ipairs(tiles) do
        res[i] = { x = t.x, y = t.y, val = 1, }
    end

    return res
end
