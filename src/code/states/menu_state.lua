-- require("src.code.rect")
menu_state = {}

function menu_state.onLoad(dt)
  --[[color = {.4,.6,.5}
  buttons = {
  	"Play",
  	"Credits",
  	"Exit",
  }
  b_color = {.9,.7,.7}
  play = Rect("Play", 96, 96, 64, 16)
  credits = Rect("Credits", 96, 128, 64, 16)
  exit = Rect("Exit", 96, 160, 64, 16)
  font = juno.Font.fromEmbedded()
  d_color = {.9,.7,.7}--]]
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
    q = "Quit",
    x = 64,
    y = 64,
    img = juno.Buffer.fromFile("src/resources/ui/button.png"),
  }
  b.f = 0
  -- b.img = juno.Buffer.fromFile("src/resources/ui/button.png")
end

function menu_state.onUpdate(dt)
  --[[x,y = juno.mouse.getPosition()
  mouse = Rect("mouse", x, y, 11, 16)
  l.coil.update(dt)
  l.tick.update(dt)]]

end

function menu_state.onDraw(dt)
  G.menu_screen:clear()
  G.menu_screen:setColor(unpack{1,1,1})
  --[[juno.graphics.drawText(G.big_font, "arbiter", 102, 32)

  if play:isOverlaping(mouse) then
    do
      p_color = {0,1,.7}
      juno.graphics.drawRect(96, 96, 64, 16,unpack(p_color))
    end
  else
    juno.graphics.drawRect(96, 96, 64, 16,unpack(d_color))
  end
  if  credits:isOverlaping(mouse) then
    do
      c_color = {0,1,.7}
        juno.graphics.drawRect(96, 128, 64, 16,unpack(c_color))
    end
  else
    juno.graphics.drawRect(96, 128, 64, 16,unpack(d_color))
  end
  if exit:isOverlaping(mouse) then
    do
      e_color = {0,1,.7}
      juno.graphics.drawRect(96, 160, 64, 16,unpack(e_color))
    end
  else
    juno.graphics.drawRect(96, 160, 64, 16,unpack(d_color))
  end
  juno.graphics.drawText(font, buttons[1], 102, 96)--]]

  if b.f == 0 then
    G.menu_screen:setColor(unpack{.5,.5,.5})
    G.menu_screen:draw(b.p.img,b.p.x,b.p.y)
    G.menu_screen:drawRect(b.p.x,b.p.y,16,16,unpack{.9,.2,0})
  else
    G.menu_screen:setColor(unpack{1,1,1})
    G.menu_screen:draw(b.p.img,b.p.x,b.p.y)
  end
  if b.f == 1 then
    G.menu_screen:setColor(unpack{.5,.5,.5})
    G.menu_screen:draw(b.c.img,b.c.x,b.c.y)
    G.menu_screen:drawRect(b.c.x,b.c.y,16,16,unpack{.9,.2,0})
  else
    G.menu_screen:setColor(unpack{1,1,1})
    G.menu_screen:draw(b.c.img,b.c.x,b.c.y)
  end
  if b.f == 2 then
    G.menu_screen:setColor(unpack{.5,.5,.5})
    G.menu_screen:draw(b.q.img,b.q.x,b.q.y)
    G.menu_screen:drawRect(b.q.x,b.q.y,16,16,unpack{.9,.2,0})
  else
    G.menu_screen:setColor(unpack{1,1,1})
    G.menu_screen:draw(b.q.img,b.q.x,b.q.y)
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
