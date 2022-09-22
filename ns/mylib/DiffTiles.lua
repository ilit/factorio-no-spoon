return function(tiles1, tiles2)
    local diff = Tiles.new()

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
            diff.append(tiles2.xs[t2i], tiles2.ys[t2i])
        end
    end

    local t2contains = function(t1i)
        for t2i=1, tiles2.len do
            if (tiles2.xs[t2i] == tiles1.xs[t1i] and
                    tiles2.ys[t2i] == tiles1.ys[t1i]) then
                return true
            end
        end

        return false
    end

    for t1i=1, tiles1.len do
        if not t2contains(t1i) then
            diff.append(tiles1.xs[t1i], tiles1.ys[t1i])
        end
    end

    return diff
end
