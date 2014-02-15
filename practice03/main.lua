function love.load()
  love.window.setTitle("practice03")

  love.graphics.setBackgroundColor(255,255,255)

  image = love.graphics.newImage("smile.png")
  imgx = (love.window.getWidth() - image:getWidth()) / 2
  imgy = (love.window.getHeight() - image:getHeight()) / 2

  speed = 300
end

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

function love.draw()
  love.graphics.draw(image, imgx, imgy)
end