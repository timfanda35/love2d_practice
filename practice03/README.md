Practice03
===============

###Key Event

Use Keyboard to Move the image on the screen.

`love.window.setTitle("practice03")` set window title with "practice03".

`love.update(dt)` update logic code.

`love.keyboard.isDown("right")` if press down "right" on keyboard, then will return true.


The update() is to set the image position on the sreen by pressed down key.

```
function love.update(dt)
   if love.keyboard.isDown("right") then
      imgx = imgx + (speed * dt)
   end
   if love.keyboard.isDown("left") then
      imgx = imgx - (speed * dt)
   end

   if love.keyboard.isDown("down") then
      imgy = imgy + (speed * dt)
   end
   if love.keyboard.isDown("up") then
      imgy = imgy - (speed * dt)
   end
end
```

**Reference:**

[love.window.setTitle](https://www.love2d.org/wiki/love.window.setTitle)

[love.update](https://www.love2d.org/wiki/love.update)

[love.keyboard.isDown](https://www.love2d.org/wiki/love.keyboard.isDown)