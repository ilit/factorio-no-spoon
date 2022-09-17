return function(ttv1, ttv2)
    if (ttv1 == nil) then error("ttv1 == nil") end
    if (ttv2 == nil) then error("ttv2 == nil") end
    if (ttv1.len == nil) then error("ttv1.len == nil") end
    if (ttv2.len == nil) then error("ttv2.len == nil") end
    if (ttv == nil) then error("ttv == nil") end

    local res = ttv.new()

    function appendToRes(summand)
        if summand.len > 0 then
            for i=1, summand.len do
                local x = summand.xs[i]
                local y = summand.ys[i]
                local val = summand.vals[i]
                res.append(x, y, val)
            end
        end
    end

    appendToRes(ttv1)
    appendToRes(ttv2)

    return res
end
