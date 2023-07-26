# Input2D

---

### What in the world is Input2D?

Input2D is a set of __Lua Scripts__ that make input registration for mobile and pc easy as hell!

Here take a look at this example code: (this example could be found on the example folder)

### Example Code

```lua
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
```

See? I told you!

This sample code above will make a joystick and a button and will print the joystick movement on the x and y axis, and print the status of the button (pressed or not pressed)

### Installation

Just like any Love2D "extension" download the code as zip file the extract it to the __root__ of you love 2d game, then import it with 

```lua
require("input2D/input2D") 
```

### To do List

| To do                                     | inportance |
|:-----------------------------------------:|:----------:|
| add Sprite support                        | 10/10      |
| add Animation with the default rectangles | 6/10       |
| add More Input methods                    | 7/10       |

### Documentation

You can find do documentation over on the "docs" folder of the source code

---
