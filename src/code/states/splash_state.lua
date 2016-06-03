require("src.code.rect")
coil = require("src.code.lib.coil")
tick = require("src.code.lib.tick")
splash_state = {}

function splash_state.onLoad(dt)
  color = {0,0,0}
  fadedIn = false
end

function splash_state.onUpdate(dt)
  coil.update(dt)
  tick.update(dt)
    fade_in = coil.add(function()
      for i = 1, 10 do
        color[1] = color[1] + .001
        color[2] = color[2] + .001
        color[3] = color[3] + .001
        coil.wait(.01)
      end
      coil.wait(2)
      fadedIn = true
    end)
    if fadedIn then
      fade_in:stop()
      fade_out= coil.add(function()
        for i = 1, 10 do
          color[1] = color[1] - .01
          color[2] = color[2] - .01
          color[3] = color[3] - .01
          coil.wait(.1)
        end
        state = "menu_state"
      end)
    end
end

function splash_state.onDraw(dt)
  juno.graphics.drawCircle(128, 128, 64, unpack(color))
end

return splash_state
