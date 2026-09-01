local Scene = {}
Scene.current = nil

function Scene.switch(newScene, ...)
    if Scene.current and Scene.current.leave then
        Scene.current.leave()
    end
    Scene.current = newScene
    if Scene.current.enter then
        Scene.current.enter(...)
    end
end

function Scene.update(dt)
    if Scene.current and Scene.current.update then
        Scene.current.update(dt)
    end
end

function Scene.draw()
    if Scene.current and Scene.current.draw then
        Scene.current.draw()
    end
end

function Scene.keypressed(key)
    if Scene.current and Scene.current.keypressed then
        Scene.current.keypressed(key)
    end
end

return Scene