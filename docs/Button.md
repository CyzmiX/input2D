# Button

---

## Creation

To make a Buttonjust make a variable and set it to be equal to __Button()__

```lua
button = Button(X, Y, RADIUS, TXT, SIZE, COLOR, FONT, FONTCOLOR)
```

Now for the parameters

### X

x position

### Y

y position

### Raduis

radius of the button

### TXT

text displayed on the Button

### Size

size of txt

### Color

color of the button (NOT THE TXT!)

### Font

font used for the txt

### Font Color

color used for the txt

## Drawing

To draw your created button just call the **draw()** function of it on the love.draw() function

```lua
function love.draw()
    button:draw()
end
```

Getting Input

To get the input of the button we will use the __isPressed()__ function

```lua
function love.update(dt)
    if button:isPressed() then
        gameStart = true
    end
end
```

Here we start a new game when the button is pressed
