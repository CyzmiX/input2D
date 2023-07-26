require("input2D/input2D")

function love.load()

    font = love.graphics.newFont("font.ttf")
    font:setFilter('nearest', 'nearest') 
    
    x = 0
    y = 0
    joystick = Joystick(
                        100, 
                        love.graphics.getHeight() - 100, 
                        25, 
                        50
                       )
    btn = Button(
        love.graphics.getWidth() - 100,
        love.graphics.getHeight() - 100,
        50,
        "A",
        3,
        {200, 0, 0},
        font,
        {255, 255, 255}
        
    )
end

function love.update()
    print("joystick x:" .. x .. " - joystick y:" .. y .. " button pressed: " .. tostring(btn:isPressed()) .. " swipe X: " .. swipeX() .. " swipe Y: " ..  swipeY())
    
    joystick:update()
    x, y = joystick:getMoveX(), joystick:getMoveY()

end

function love.draw()
    joystick:draw()
    btn:draw()

end