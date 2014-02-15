function love.load()
  love.window.setTitle("practice04")

  love.graphics.setBackgroundColor(255,255,255)

  image = love.graphics.newImage("smile.png")
  imgx = (love.window.getWidth() - image:getWidth()) / 2
  imgy = (love.window.getHeight() - image:getHeight()) / 2

  speedx = 200
  speedy = 100
end

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

function love.draw()
  love.graphics.draw(image, imgx, imgy)
end