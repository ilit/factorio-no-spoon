return function(ttvRaw)
    local res = ttv.new()

    for i=1, ttvRaw.len do
        local x = ttvRaw.xs[i]
        local y = ttvRaw.ys[i]
        local val = ttvRaw.vals[i]

        --local smoothedVal = math.floor(math.log(val))*2 + 1
        local smoothedVal = 20

        res.append(x, y, smoothedVal)
    end

    return res
end
