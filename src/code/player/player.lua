player = l.Class:extend()

local Input = require("src.code.util.input")
--[[
if love.keyboard.isDown("d") and
player.xvel < 100 then
  player.animation = player.swr
  player.xvel = player.xvel + player.speed * dt
elseif love.keyboard.isDown("a") and
player.xvel > - 100 then
  player.animation = player.swl
  player.xvel = player.xvel - player.speed * dt
end
]]
local keys = {
  x = function()

  end,
  up = function()

  end,
  down = function()
  end,
  right = function(xvel,sdt)
    if xvel < 100 then xvel = xvel + sdt return xvel end
  end,
  left = function(xvel,sdt)
    if xvel > -100 then xvel = xvel - sdt return xvel end
  end,
  p = function()

  end
  }

function player:new(x,y,spd,hlt,dmg,img,xvel,yvel,friction,gravity,buffer)
  self.x = x or 10
  self.y = y or 10
  self.speed = spd or 30
  self.health = hlt or 20
  self.damage = dmg or 7
  self.img = juno.Buffer.fromFile(img)
  self.xvel = xvel or 0
  self.yvel = yvel or 0
  self.friction = friction or 10
  self.gravity = gravity or 25
  self.width = self.img:getWidth()
  self.height = self.img:getHeight()
  self.canvas = buffer
end

function player:update(dt)
    -- io.write(self.x,self.y.."\n")
    l.coil.update(dt)
    l.tick.update(dt)
    self.x = self.x + self.xvel
    self.y = self.y + self.yvel
    self.xvel = self.xvel * (1 - math.min(dt*self.friction, 1))
    self.yvel = self.yvel * (1 - math.min(dt*self.friction, 1))
    self.sdt = self.speed * dt

end

function player:draw(dt)
    self.img:copyPixels(self.canvas, self.x, self.y, nil)
end

function player:update_keys(k)
    Input.update(keys,k,self.xvel,self.sdt)
		print(k,self.x,self.y)
end

return player
