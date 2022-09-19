--Point point(100, 100);
--for(int x = -radius; x <= radius; ++x)
--for(int y = -radius; y <= radius; ++y)
--if(x*x + y*y <= radius* radius)   {
--points.insert(Point(x + point.x, y + point.y));
--}

return function(ttvSmoothed)
    local tiles = Tiles.new()

    for i=1, ttvSmoothed.len do
        local xCenter = ttvSmoothed.xs[i]
        local yCenter = ttvSmoothed.ys[i]
        local dist = ttvSmoothed.vals[i]

        for x=xCenter-dist, xCenter+dist do
            for y=yCenter-dist, yCenter+dist do
                if x*x + y*y <= dist * dist then
                    tiles.append(x, y)
                end
            end
        end
    end

    return tiles
end
