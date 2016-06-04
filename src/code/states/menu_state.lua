menu_state = {}

function menu_state.onLoad(dt)
  color = {.4,.6,.5}
  buttons = {
  	"Play",
  	"Credits",
  	"Exit",
  }
  font = juno.Font.fromEmbedded()
end

function menu_state.onUpdate(dt)
  l.coil.update(dt)
  l.tick.update(dt)
end

function menu_state.onDraw(dt)
  juno.graphics.drawText(font, "arbiter", 102, 32)
  juno.graphics.drawRect(96, 96, 64, 16,unpack{.9,.7,.7})
  juno.graphics.drawText(font, buttons[1], 102, 96)
  juno.graphics.drawRect(96, 128, 64, 16,unpack{.9,.7,.7})
  juno.graphics.drawRect(96, 160, 64, 16,unpack{.9,.7,.7})
end

return menu_state
