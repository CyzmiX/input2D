require("input2D/utils")
function Joystick(x, y, rad1, rad2, color1, color2, seg1, seg2)

    return {
        rad = rad1,
        rad2 = rad2,
        x = x, 
        y = y,
        initX = x,
        initY = y,
        color1 = color1 or {255, 255, 255},
        color2 = color2 or {255, 255, 255},
        seg1 = seg1 or 10,
        seg2 = seg2 or 100,

        draw = function(self)
            
            assert(#self.color1 == 3, "\nJoystick Module: \nPlease enter a valid color format {r, g, b}")
            assert(#self.color2 == 3, "\nJoystick Module: \nPlease enter a valid color format {r, g, b}")
            
            assert(type(self.x) == 'number', "\nJoystick Module: \nX position must be an int (number) not a ".. type(self.x))
            assert(type(self.y) == 'number', "\nJoystick Module: \nY position must be an int (number) not a ".. type(self.y))

            love.graphics.setColor(self.color1[1], self.color1[2], self.color1[3])
            love.graphics.circle("line", self.initX, self.initY, self.rad2, self.seg1)
            
            love.graphics.setColor(self.color2[1], self.color2[2], self.color2[3])
            love.graphics.circle("fill", self.x, self.y, self.rad, self.seg2)

        end,

        update = function(self)
            if love.mouse.isDown(1) then
                if collidePointCircle(self.x, self.y, self.rad, love.mouse.getX(), love.mouse.getY()) then
                    self.x, self.y = love.mouse.getPosition() 
                else
                    self.x = self.initX
                    self.y = self.initY
                    
                end
            else
                self.x = self.initX
                self.y = self.initY
            end
        end,

        getMoveX = function(self)
            return -((self.initX - self.x) / 10)
        end,

        getMoveY = function(self)
            return  -((self.initY - self.y) / 10)
        end,
	
	getMove = function(self)
	    return self.getMoveX(), self.getMoveY()
	end,


    }

end

