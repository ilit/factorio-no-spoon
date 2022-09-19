return function(xCenter, yCenter, dist)
    local field = Tiles.new()

    if dist > 0 then
        local radius = dist - 1
        for xOff=-radius, radius do
            for yOff=-radius, radius do
                if xOff*xOff + yOff*yOff <= radius * radius then
                    field.append(xOff+xCenter, yOff+yCenter)
                end
            end
        end
    end

    return field
end
