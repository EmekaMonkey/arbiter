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
  fade_in = coroutine.create(function()
	  for i = 1, 10 do
		  print(unpack(color))
    	color[1] = color[1] + .1
      color[2] = color[2] + .1
      color[3] = color[3] + .1
    end
  end)
  coroutine.resume(fade_in)
  fade_out = coroutine.create(function()
	  for i = 1, 10 do
    	print(unpack(color))
    	color[1] = color[1] - .1
      color[2] = color[2] - .1
      color[3] = color[3] - .1
    end
  end)
  coroutine.resume(fade_out)
end

function juno.onDraw(dt)
  juno.graphics.drawCircle(128, 128, 64, unpack(color))
  print(unpack(color))

end
