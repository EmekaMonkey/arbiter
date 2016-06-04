coil = require("src.code.lib.coil")
tick = require("src.code.lib.tick")
menu_state = {}

function menu_state.onLoad(dt)
  color = {.4,.6,.5}

end

function menu_state.onUpdate(dt)
  coil.update(dt)
  tick.update(dt)
end

function menu_state.onDraw(dt)
  juno.graphics.drawRect(96, 64, 64, 16,unpack{.9,.7,.7})
  juno.graphics.drawRect(96, 96, 64, 16,unpack{.9,.7,.7})
  juno.graphics.drawRect(96, 128, 64, 16,unpack{.9,.7,.7})
end

return menu_state
