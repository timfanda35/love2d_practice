Practice02
===============

###Show Image

Show a image on the screen.

`love.load()` initial when executed.

`love.graphics.setBackgroundColor(255,255,255)` is set the background color, you can modify the three numbers to change color.

`love.graphics.newImage("smile.png")` will load smile.png to a image type object for using later.

`love.graphics.draw(image, imgx, imgy)` will draw the image in position (imgx, imgy) on the screen.


```
function love.load()
  love.graphics.setBackgroundColor(255,255,255)

  image = love.graphics.newImage("smile.png")
  imgx = (love.window.getWidth() - image:getWidth()) / 2
  imgy = (love.window.getHeight() - image:getHeight()) / 2
end

function love.draw()
  love.graphics.draw(image, imgx, imgy)
end
```

**Reference:**

[love.load](https://www.love2d.org/wiki/love.load)

[love.graphics.setBackgroundColor](https://www.love2d.org/wiki/love.graphics.getBackgroundColor)

[love.graphics.newImage](https://www.love2d.org/wiki/love.graphics.newImage)

[Image](https://www.love2d.org/wiki/Image)

[love.graphics.draw](https://www.love2d.org/wiki/love.graphics.draw)
