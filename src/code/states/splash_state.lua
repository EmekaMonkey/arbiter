splash_state = {}

function splash_state.onLoad(dt)
  color = {0,0,0}
  fadedIn = false
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
  juno.graphics.setColor(unpack(color))

  -- juno.graphics.drawCircle(128, 128, 64)
  juno.graphics.drawText(G.big_font,G.author, juno.graphics.getWidth()/2 - (G.big_font:getWidth(G.author)/2), juno.graphics.getHeight()/2-G.big_font:getHeight())
  -- juno.graphics.draw(G.splash,64, 64)
end

function splash_state.onKeyDown(k)
  if k == "x" then
    state = "menu_state"
  end
end

return splash_state
