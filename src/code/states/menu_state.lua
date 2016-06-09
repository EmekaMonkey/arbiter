menu_state = {}

function menu_state.onLoad(dt)
  G.menu_screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  G.menu_cursor = juno.Buffer.fromFile("src/resources/ui/cursor.png")

  b = {}
  b.p = {
    f = 0,
    t = "Play",
    y = 32,
    img = juno.Buffer.fromFile("src/resources/ui/button.png"),
  }
  b.p.x = G.menu_screen:getWidth() / 24 - (G.font:getWidth(b.p.t) / 24)
  b.c = {
    f = 1,
    t = "Credits",
    y = 64,
    img = juno.Buffer.fromFile("src/resources/ui/button.png"),
  }
  b.c.x = G.menu_screen:getWidth() / 24 - (G.font:getWidth(b.c.t) / 24)
  b.q = {
    f = 2,
    t = "Quit",
    y = 96,
    img = juno.Buffer.fromFile("src/resources/ui/button.png"),
  }
  b.q.x = G.menu_screen:getWidth() / 24 - (G.font:getWidth(b.q.t) / 24)
  b.f = 0
end

function menu_state.onUpdate(dt)

end

function menu_state.onDraw(dt)
  G.menu_screen:clear()
  G.menu_screen:setColor(unpack{1, 1, 1})

  if b.f == 0 then
    G.menu_screen:setColor(unpack{.2, .2, .2})
    G.menu_screen:draw(G.menu_cursor, b.p.x - 2, b.p.y)
    G.menu_screen:drawText(G.font, b.p.t, b.p.x + 8, b.p.y)
  else
    G.menu_screen:setColor(unpack{1, 1, 1})
    G.menu_screen:drawText(G.font, b.p.t, b.p.x, b.p.y)
  end
  if b.f == 1 then
    G.menu_screen:setColor(unpack{.2, .2, .2})
    G.menu_screen:draw(G.menu_cursor, b.c.x - 2, b.c.y)
    G.menu_screen:drawText(G.font, b.c.t, b.c.x + 8, b.c.y)
  else
    G.menu_screen:setColor(unpack{1, 1, 1})
    G.menu_screen:drawText(G.font, b.c.t, b.c.x, b.c.y)
  end
  if b.f == 2 then
    G.menu_screen:setColor(unpack{.2, .2, .2})
    G.menu_screen:draw(G.menu_cursor, b.q.x - 2, b.q.y)
    G.menu_screen:drawText(G.font, b.q.t, b.q.x + 8, b.q.y)
  else
    G.menu_screen:setColor(unpack{1, 1, 1})
    G.menu_screen:drawText(G.font, b.q.t, b.q.x, b.q.y)
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
