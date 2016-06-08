game_state = {}

function game_state.onLoad(dt)
  player = juno.Buffer.fromBlank(16, 16)
  G.game_screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)

end

function game_state.onUpdate(dt)
  l.coil.update(dt)
  l.tick.update(dt)
end

function game_state.onDraw(dt)
  player:floodFill(16, 16, unpack{.4,.8,.2})
end

function game_state.onKeyDown(k)

end

return game_state
