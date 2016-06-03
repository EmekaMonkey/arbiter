require("src.code.rect")
coil = require("src.code.lib.coil")
tick = require("src.code.lib.tick")

function juno.onLoad(dt)
  juno.debug.setVisible(true)
  G.screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  local a = Rect("a", 1, 1, 1, 1)
  local b = Rect("b", 2, 2, 2, 2)
  color = {0,0,0}
end

function juno.onUpdate(dt)
  coil.update(dt)
  tick.update(dt)

    --[[fade_in = coil.add(function()
      for i = 1, 5 do
        color[1] = color[1] + .01
        color[2] = color[2] + .01
        color[3] = color[3] + .01
        i = i + 1
        coil.wait(.1)
        if color[1] == 1 then
          for i = 1, 5 do
            color[1] = color[1] - .01
            color[2] = color[2] - .01
            color[3] = color[3] - .01
            coil.wait(.5)
          end
        end
      end
      fade_in:stop()
      fadedIn = true
      if fadedIn then
      end
    end)
    fade_in()
    tick.delay(fade_out, 2)--]]

    fade_in = coroutine.create(function()
      for i = 1, 2 do
        color[1] = color[1] + .01
        color[2] = color[2] + .01
        color[3] = color[3] + .01
      end
    end)
    coroutine.resume(fade_in)
    fade_out = coroutine.create(function()
      for i = 1, 5 do
        color[1] = color[1] - .01
        color[2] = color[2] - .01
        color[3] = color[3] - .01
      end
    end)

end

function juno.onDraw(dt)
  juno.graphics.drawCircle(128, 128, 64, unpack(color))
  print(unpack(color))

end
