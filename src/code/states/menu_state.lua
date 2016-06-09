menu_state = {}

function menu_state.onLoad(dt)
  G.menu_screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)

  b = {}
  b.p = {
    f = 0,
    t = "Play",
    x = 64,
    y = 0,
    img = juno.Buffer.fromFile("src/resources/ui/button.png"),
  }
  b.c = {
    f = 1,
    t = "Credits",
    x = 64,
    y = 32,
    img = juno.Buffer.fromFile("src/resources/ui/button.png"),
  }
  b.q = {
    f = 2,
    t = "Quit",
    x = 64,
    y = 64,
    img = juno.Buffer.fromFile("src/resources/ui/button.png"),
  }
  b.f = 0
end

function menu_state.onUpdate(dt)

end

function menu_state.onDraw(dt)
  G.menu_screen:clear()
  G.menu_screen:setColor(unpack{1,1,1})

  if b.f == 0 then
    G.menu_screen:setColor(unpack{.5,.5,.5})
    -- G.menu_screen:draw(b.p.img,b.p.x,b.p.y)
    G.menu_screen:drawText(G.font, b.p.t, G.menu_screen:getWidth()/13 - (G.font:getWidth(b.p.t)/13),b.p.y)
    G.menu_screen:drawRect(b.p.x,b.p.y,16,16,unpack{.9,.2,0})
  else
    G.menu_screen:setColor(unpack{1,1,1})
    -- G.menu_screen:draw(b.p.img,b.p.x,b.p.y)
    G.menu_screen:drawText(G.font, b.p.t, G.menu_screen:getWidth()/13 - (G.font:getWidth(b.p.t)/13),b.p.y)
  end
  if b.f == 1 then
    G.menu_screen:setColor(unpack{.5,.5,.5})
    -- G.menu_screen:draw(b.c.img,b.c.x,b.c.y)
    G.menu_screen:drawText(G.font, b.c.t, G.menu_screen:getWidth()/13 - (G.font:getWidth(b.c.t)/13),b.c.y)
    G.menu_screen:drawRect(b.c.x,b.c.y,16,16,unpack{.9,.2,0})
  else
    G.menu_screen:setColor(unpack{1,1,1})
    -- G.menu_screen:draw(b.c.img,b.c.x,b.c.y)
    G.menu_screen:drawText(G.font, b.c.t, G.menu_screen:getWidth()/13 - (G.font:getWidth(b.c.t)/13),b.c.y)
  end
  if b.f == 2 then
    G.menu_screen:setColor(unpack{.5,.5,.5})
    -- G.menu_screen:draw(b.q.img,b.q.x,b.q.y)
    G.menu_screen:drawText(G.font, b.q.t, G.menu_screen:getWidth()/13 - (G.font:getWidth(b.q.t)/13),b.q.y)
    G.menu_screen:drawRect(b.q.x,b.q.y,16,16,unpack{.9,.2,0})
  else
    G.menu_screen:setColor(unpack{1,1,1})
    -- G.menu_screen:draw(b.q.img,b.q.x,b.q.y)
    G.menu_screen:drawText(G.font, b.q.t, G.menu_screen:getWidth()/13 - (G.font:getWidth(b.q.t)/13),b.q.y)
  end
end

function menu_state.onKeyDown(k)
  if k == "down" then
    b.f = b.f + 1
  elseif k == "up" then
    b.f = b.f - 1
  end
  if b.f < 0 then b.f = 2 end
  if b.f > 2 then b.f = 0 end
  if k == "x" and b.f == 0 then
    state = "game_state"
  elseif k == "x" and b.f == 1 then
    print(G.author .. " is the Author")
  elseif k == "x" and b.f == 2 then
    os.exit()
  end
end

return menu_state
