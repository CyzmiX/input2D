function choice(table)
    return table[math.random(1, #table)]
end

function collideRect(obj1, obj2)
    return obj1.x > obj2.x + obj2.width
    
end

function collidePointCircle(circX, circY, rad, pointX, pointY)


    return ((pointX - circX)^2 + (pointY - circY)^2) <= rad^2

end
