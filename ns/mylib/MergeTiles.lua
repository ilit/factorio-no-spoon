return function(tiles1, tiles2)
    local merged = Tiles.new()

    for i=1, tiles1.len do
        merged.append(tiles1.xs[i], tiles1.ys[i])
    end

    local t1contains = function(t2i)
        for t1i=1, tiles1.len do
            if (tiles1.xs[t1i] == tiles2.xs[t2i] and
                tiles1.ys[t1i] == tiles2.ys[t2i]) then
                return true
            end
        end

        return false
    end

    for t2i=1, tiles2.len do
        if not t1contains(t2i) then
            merged.append(tiles1.x, tiles1.y)
        end
    end

    return merged
end
