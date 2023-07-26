require("input2D/utils")

function Button(x, y, rad, txt, size, colors, font, fontColor)

    return {
        x = x,
        y = y, 
        rad = rad,
        txt = txt,
        hovered = false,
        color = colors or {255, 255, 255},
        font = font or nil,
        size = size or 3,
        fontColor = fontColor or {255, 255, 255},
        
      
        draw = function(self)
            self.hovered = collidePointCircle(self.x, self.y, self.rad, love.mouse.getX(), love.mouse.getY()) 

            love.graphics.setColor(self.color[1], self.color[2], self.color[3])
            love.graphics.circle("line", self.x, self.y, self.rad, 10)


            love.graphics.setColor(self.fontColor[1], self.fontColor[2], self.fontColor[3])
            
            if self.font then love.graphics.setFont(self.font) end

            love.graphics.print(self.txt, self.x - 13, self.y - 23  , 0, self.size, self.size)
            


        end,

        isPressed = function(self)

            if love.mouse.isDown(1) then
                if self.hovered then 
                    return true 
                    
                end
                
            end
            return false
        end

    


    }

end

