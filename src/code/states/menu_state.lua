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
  d_color = {.9,.7,.7}]]

  splsash = juno.Buffer.fromFile("src/resources/graphics/player.png")

  b = {
    p = {
      t = "Play",
      x = 64,
      y = 0
    },
    c = {
      t = "Credits",
      x = 64,
      y = 64
    },
    q = {
      q = "Quit",
      x = 64,
      y = 128
    },
    f = p
  }
end

function menu_state.onUpdate(dt)
  --[[x,y = juno.mouse.getPosition()
  mouse = Rect("mouse", x, y, 11, 16)]]
  --[[l.coil.update(dt)
  l.tick.update(dt)]]

end

function menu_state.onDraw(dt)
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
  juno.graphics.drawText(font, buttons[1], 102, 96)]]
  juno.graphics.draw(splsash,120,120)
end

function menu_state.onKeyDown(k)

end

return menu_state
