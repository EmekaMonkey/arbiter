player = lib.Class:extend()

local Input = require("src.code.util.input")

function player:new(x,y,img,buffer)
  self.x = x or 0
  self.y = y or 112
  self.speed = 30
  self.health = 9
  self.damage = 7
  self.img = juno.Buffer.fromBlank(32, 32)
  self.xvel = 0
  self.yvel = 0
  self.width = self.img:getWidth()
  self.height = self.img:getHeight()
  self.canvas = buffer
  self.onGround = 0
end

function player:update(dt)
    -- print(self.x,self.y.."\n")
    self.dt = dt
    lib.coil.update(dt)
    lib.tick.update(dt)
    -- self.x = (self.x + self.xvel * dt)
    -- self.y = (self.y + self.yvel) + (G.world.gravity * dt)
    -- self.xvel = self.xvel * (1 - math.min(dt*G.world.friction, 1))
    -- self.yvel = self.yvel * (1 - math.min(dt*G.world.friction, 1))

    self.x = (self.x + self.xvel)
    self.y = (self.y + self.yvel) + (G.world.gravity * dt)
    self.xvel = self.xvel * (1 - math.min(dt*G.world.friction, 1))
    self.yvel = self.yvel * (1 - math.min(dt*G.world.friction, 1))

    if juno.keyboard.isDown("right") and self.xvel < 100 then self.xvel = self.xvel + self.speed * dt end
    if juno.keyboard.isDown("left") and self.xvel > -100 then self.xvel = self.xvel - self.speed * dt end

    if self.y >= 112 then
      self.y = 112
      self.onGround = 0
    end
    if self.y < 0 then self.y = 0 end
    if self.x > 112 then self.x = 112 end
    if self.x < 0 then self.x = 0 end
end

function player:draw(dt)
    self.img:setColor(unpack{1,1,1})
    self.img:drawCircle(8,8,8)
    self.canvas:copyPixels(self.img, self.x, self.y)
end

function player:update_keys(k)
    if k == "x" and self.onGround < 2 and self.yvel > -100 then
      self.yvel = self.yvel - 15
      self.onGround = self.onGround + 1
    end
    print(self.x .. " " .. self.y)
end

return player
