local SpriteFactory = {}

function SpriteFactory.new(imagePath,cols,rows)
    local image = love.graphics.newImage(imagePath)
    image:setFilter("nearest", "nearest")

    local imgWidth, imgHeight = image:getDimensions()
    local tileWidth = imgWidth / cols
    local tileHeight = imgHeight / rows

    local atlas = {
        image = image,
        tileWidth = tileWidth,
        tileHeight = tileHeight,
        quads = {}
    }

    local index = 1
    for row = 0, rows - 1 do 
        for col = 0, cols - 1 do
            atlas.quads[index] = love.graphics.newQuad(
            col * tileWidth,
            row * tileHeight,
        tileWidth,
        tileHeight,
        imgWidth,
        imgHeight
        )
        index = index +1
        end
    end

    return atlas
end

function SpriteFactory.draw(atlas, index, x, y , scale)
    scale = scale or 1
    love.graphics.draw(atlas.image, atlas.quads[index], x, y ,0,scale, scale)
end

return SpriteFactory