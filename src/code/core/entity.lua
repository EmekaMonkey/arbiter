entity = lib.Class:extend()

function entity:new(x,y,w,h,physics)
  self.x = x
  self.y = y
  self.width = w
  self.height = h
  self.physics = physics or false
  if self.physics then
    self.xvel = 0
    self.yvel = 0
  end
end

function entity:add_animation(name,frames,img,w,h)
  self.animations[name] = {}
  for i=0, frames do
    table.insert(self.animation[name], {})
  end
end

function entity:update(dt)
  if self.physics then
    self.x = (self.x + self.xvel)
    self.y = (self.y + self.yvel) + (G.world.gravity * dt)
    self.xvel = self.xvel * (1 - math.min(dt*G.world.friction, 1))
    self.yvel = self.yvel * (1 - math.min(dt*G.world.friction, 1))
  end
end
