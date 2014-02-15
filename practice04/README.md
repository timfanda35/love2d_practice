Practice04
===============

###Bouncy Ball

The image is like a Bouncy Ballon the screen.

The update() is to set the image position on the sreen.

```
function love.update(dt)
  imgx = imgx + (speedx * dt)
  imgy = imgy + (speedy * dt)

  if imgx < 0 then
    imgx = 0
    speedx = speedx * -1
  end

  if imgx + image:getWidth() > love.window.getWidth() then
    imgx = love.window.getWidth() - image:getWidth()
    speedx = speedx * -1
  end

  if imgy < 0 then
    imgy = 0
    speedy = speedy * -1
  end

  if imgy + image:getHeight() > love.window.getHeight() then
    imgy = love.window.getHeight() - image:getHeight()
    speedy = speedy * -1
  end
end
```