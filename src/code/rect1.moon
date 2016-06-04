class Rect
  getPosition = function(self)
    return self.x, self.y
  getSize = function(self)
    return self.w, self.h
  getTop = function(self)
    return self.y
  getBottom = function(self)
    return self.y + self.h
  getLeft = function(self)
    return self.x
  getRight = function(self)
    return self.x + self.w
  isColliding = function(self, e)
    e = e or Rect("nil", 0, 0, 0, 0)
    if self:getTop() == e:getBottom() then
      return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
    elseif self:getBottom() == e:getTop() then
      return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
    elseif self:getRight() == e:getLeft() then
      return print(tostring(e.id) .. " is colliding with ".. tostring(self.id) .. ".")
    elseif self:getLeft() == e:getRight() then
      return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
    else
      return print("All clear")
  isOverlaping = function(self, e)
    e = e or Rect("nil", 0, 0, 0, 0)
    return e.x + e.w > self.x and e.x < self.x + self.w and e.y + e.h > self.y and e.y < self.y + self.h
