

local initX = 0
local initY = 0

function love.mousepressed(x, y, button)
    initX = x 
    initY = y
end

function swipeX(regulation)
    local reg = regulation or 25
    if love.mouse.isDown(1) then
        return -((initX - love.mouse.getX()) /reg) 
    else
        initX = 0
    end
    return 0
end

function swipeY(regulation)
    local reg = regulation or 25
    if love.mouse.isDown(1) then
        return -((initY - love.mouse.getY()) /reg) 
    else
        initY = 0
    end
    return 0
end

function swipePos(regulationX, regulationY)
    return swipeX(regulationX), swipeY(regulationY)
end
