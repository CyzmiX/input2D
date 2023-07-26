# Swipe

## SwipeX

To get how much the player has swipped their finger across the screen on the X axis we will use __swipeX()__

```lua
function love.update(dt)
    x = swipeX(REGULATION)
end
```

### Regulation

a number that determines how big will the returned number be (bigger regulation = smaller number and vice versa)

## SwipeY

For swiping on the Y axis we will use __swipeY()__

```lua
function love.update(dt)
    x = swipeX(REGULATION)
    y = swipeY(REGULATION)
end
```
