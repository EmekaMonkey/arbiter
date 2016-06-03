state = "start_splash"
if state == "start_splash" then
  dofile("start_splash.lua")

else
  function juno.onDraw()
    juno.graphics.drawCircle(128, 128, 64, unpack(0,0,0))
  end
end
