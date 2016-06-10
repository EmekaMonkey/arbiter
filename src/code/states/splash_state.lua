splash_state = {}
local Input = require("src.code.util.input")
local keys = {
  x = function() state = "menu_state" end
}

function splash_state.onLoad(dt)
  color = {0,0,0}
  fadedIn = false
  G.splash_screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  G.splash = juno.Buffer.fromFile("src/resources/ui/splash.png")
end

function splash_state.onUpdate(dt)
  l.coil.update(dt)
  l.tick.update(dt)
    fade_in = l.coil.add(function()
      l.coil.wait(.2)
      for i = 1, 10 do
        color[1] = color[1] + .001
        color[2] = color[2] + .001
        color[3] = color[3] + .001
        l.coil.wait(.01)
      end
      l.coil.wait(2)
      fadedIn = true
    end)
    if fadedIn then
      fade_in:stop()
      fade_out= l.coil.add(function()
        for i = 1, 10 do
          color[1] = color[1] - .01
          color[2] = color[2] - .01
          color[3] = color[3] - .01
          l.coil.wait(.1)
        end
        l.coil.wait(.2)
        state = "menu_state"
      end)
    end
end
function splash_state.onDraw(dt)
  G.splash_screen:setColor(unpack(color))
  G.splash_screen:drawText(G.font,G.author, G.splash_screen:getWidth()/13 - (G.font:getWidth(G.author)/13), G.splash_screen:getHeight()/7-G.font:getHeight())
end

function splash_state.onKeyDown(k)
  -- if k == "x" then state = "menu_state" end
  Input.update(keys,k)
end

return splash_state
