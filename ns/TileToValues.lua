local ttv = {}

function ttv.new()
    local m = {}
    m.xs = {}
    m.ys = {}
    m.vals = {}
    m.len = 0

    function m.append(x, y, val)
        if m.len > 0 then
            for i=1, m.len do
                if (m.xs[i] == x and m.ys[i] == y) then
                    m.vals[i] = m.vals[i] + val
                    return
                end
            end
        end
        --- No value found - make a new val
        m.len = m.len + 1
        m.xs[m.len] = x
        m.ys[m.len] = y
        m.vals[m.len] = val
    end

    function m.get(x, y)
        for i=1, m.len do
            if m.xs[i] == x and m.ys[i] == y then
                return m.vals[i]
            end
        end
        --- No value found
        return 0
    end

    return m
end

return ttv
