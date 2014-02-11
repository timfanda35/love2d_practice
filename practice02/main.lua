function love.load()
  love.graphics.setBackgroundColor(255,255,255)

  image = love.graphics.newImage("smile.png")
  imgx = (love.window.getWidth() - image:getWidth()) / 2
  imgy = (love.window.getHeight() - image:getHeight()) / 2
end

function love.draw()
  love.graphics.draw(image, imgx, imgy)
end