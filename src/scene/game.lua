local SpriteFactory = require("engine.spritefactory")
local playerSprite = SpriteFactory.new("assets/bird.png",1,1)
local Scene = require("engine.scene")

local gameScene = {}
local width = love.graphics.getWidth()
local height = love.graphics.getHeight()

local player = {}
player.y = height / 2 - (512 * 0.15)
player.x = width / 2 - (512 * 0.15)
player.velocityY = 0

local gravity = 500
local jumpForce = -350

function gameScene.enter()
    player.y = height / 2 - (512 * 0.15)
    player.x = width / 2 - (512 * 0.15)
    player.velocityY = 0
end

function gameScene.draw()
    SpriteFactory.draw(playerSprite,1,player.x,player.y,0.15)
end

function gameScene.update(dt)
    player.velocityY = player.velocityY + gravity * dt
    player.y = player.y + player.velocityY * dt
    if player. y > height then
        local titleScene = require("src.scene.title")
        Scene.switch(titleScene)
    end
end

function gameScene.keypressed(key)
    if key == "up" then
        player.velocityY = jumpForce
    end
    
end

return gameScene