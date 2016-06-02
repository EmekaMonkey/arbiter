require("src.code.rect")

function juno.onLoad(dt)
  juno.debug.setVisible(true)
  G.screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  local a = Rect("a", 1, 1, 1, 1)
  local b = Rect("b", 2, 2, 2, 2)
end

function juno.onUpdate(dt)

end

function juno.onDraw(dt)

end
