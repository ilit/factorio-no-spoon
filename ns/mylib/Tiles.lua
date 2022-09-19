local Tiles = {}

function Tiles.new()
    local m = {}
    m.xs = {}
    m.ys = {}
    m.len = 0

    function m.append(x, y)
        if m.len > 0 then
            for i=1, m.len do
                if (m.xs[i] == x and m.ys[i] == y) then
                    return
                end
            end
        end
        --- No value found - make a new val
        m.len = m.len + 1
        m.xs[m.len] = x
        m.ys[m.len] = y
    end

    return m
end

return Tiles
