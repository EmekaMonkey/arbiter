local Button = l.Class:extend()
masterIndex = {
  menuState = {},
  pauseState = {}
}
index = 1


function Button:new(txt, y, buffer, img, exc, slc, ulc, act)
  self.idx = #masterIndex +1
  self.txt = txt or "button"
  masterIndex[self.idx] =  self.txt
  self.y = y or 0

  self.buffer = buffer or juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)

  self.img = img or juno.Buffer.fromFile("src/resources/ui/button.png")

  self.x = x or self.buffer:getWidth() / 24 - (G.font:getWidth(self.txt) / 24)
  self.exc = loadstring(exc) or loadstring([[
    print("s")
  ]])
  self.slc = loadstring(slc) or loadstring([[
  print("s")
  ]])
  self.ulc = loadstring(ulc) or loadstring([[
  print("s")
  ]])
  self.act = act or "x"
end

function Button:draw()
  if index == self.idx then
    self.slc()
  else
    self.ulc()
  end
end

function Button:keyCheck(k)
  if k == self.act and index == self.idx then
     self.exc()
  end

end

function Button.check(k,md)
  if k == "down" then
    index = index + 1
  elseif k == "up" then
    index = index - 1
  end
   if md == "infinite" or "inf" then
     if index < 1 then index = #masterIndex end
     if index > #masterIndex then index = 1 end
   elseif md == "finite" or "fin" then
     if index < 1 then index = #masterIndex end
     if index > #masterIndex then index = 1 end
   else
     if index < 1 then index = #masterIndex end
     if index > #masterIndex then index = 1 end
   end

end

return Button
