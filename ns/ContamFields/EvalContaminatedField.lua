return function(xCenter, yCenter, strength)
    local field = Tiles.new()

    if strength > 0 then
        local radius = strength - 1
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
