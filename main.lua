
local Scene = require("engine.scene")
local titleScene = require("src.scene.title")
local title = love.window.setTitle("Test Flappy bird")

function love.load()
    Scene.switch(titleScene)
end

function love.update(dt)
    Scene.update(dt)
end

function love.draw()
  Scene.draw()
end

function love.keypressed(key)
  Scene.keypressed(key)
  
end