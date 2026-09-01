local Scene = require("engine.scene")
local gameScene = require("src.scene.game")
local sceneTitle = {}
local gameTitle = "Fourbe"
local subtitle = "En cours de développement"
local width = love.graphics.getWidth()
local height = love.graphics.getHeight()

function sceneTitle.enter()
    
end

function sceneTitle.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.printf(gameTitle, 0, height/2 - 40, width, "center")
    love.graphics.printf(subtitle, 0, height/2 + 10 , width, "center")
end

function sceneTitle.keypressed(key)
    if key== "space" then
        Scene.switch(gameScene)
    end
end

return sceneTitle