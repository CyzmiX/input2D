# Joystick

---

## Creation

To make a joystick just make a variable and set it to be equal to __Joystick()__

```lua
joystick = Joystick(X, Y, RADUIS1, RADUIS2, COLOR1, COLOR2, SEG1, SEG2)
```

Now for the parameters

## X

x position

### Y

y position

### Raduis 1

radius of the first circle

### Raduis 2

radius of the first circle

### Color 1 (optional)

a table with the red green and blue (r, g, b) values for the 1st circle

### Color 2 (optional)

a table with the red green and blue (r, g, b) values for the 2st circle

### Seg 1 (optional)

the number of segments for the 1st circle

### Seg 2 (optional)

the number of segments for the 2st circle

## Drawing

To draw your created joystick just call the __draw()__ function of it on the love.draw() function 

```lua
function love.draw()
    joystick:draw()
end
```

## Getting Input

To get the input of the joystick (how much it was moved) we first need to update it with the __update()__ function then we will use the __getMoveX()__ and __getMoveY()__ functions to retreive how much it was moved

```lua
function love.update(dt)
    joystick:update()

    x, y = joystick.getMoveX(), joystick.getMoveY()
    player.x, player.y = player.x +x, player.y + y
end
```

Here we set the x and y variables to the mouvement of the joystick and we add it to player.x and player.y so that the player moves along with the joystick

---
