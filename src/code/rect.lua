do
  local _class_0
  local _base_0 = {
    getPosition = function(self)
      return self.x, self.y
    end,
    getSize = function(self)
      return self.w, self.h
    end,
    getTop = function(self)
      return self.y
    end,
    getBottom = function(self)
      return self.y + self.h
    end,
    getLeft = function(self)
      return self.x
    end,
    getRight = function(self)
      return self.x + self.w
    end,
    isColliding = function(self, e)
      e = e or Rect("nil", 0, 0, 0, 0)
      if self:getTop() == e:getBottom() then
        return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
      elseif self:getBottom() == e:getTop() then
        return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
      elseif self:getRight() == e:getLeft() then
        return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
      elseif self:getLeft() == e:getRight() then
        return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
      else
        return print("All clear")
      end
    end,
    isOverlaping = function(self, e)
      e = e or Rect("nil", 0, 0, 0, 0)
      return e.x + e.w > self.x and e.x < self.x + self.w and e.y + e.h > self.y and e.y < self.y + self.h
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, id, x, y, w, h)
      self.id = id
      self.x = x
      self.y = y
      self.w = w
      self.h = h
    end,
    __base = _base_0,
    __name = "Rect"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Rect = _class_0
  return _class_0
end
