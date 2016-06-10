game_state = {}
local Input = require("src.code.util.input")
local keys = {} 


function game_state.onLoad(dt)
  player = juno.Buffer.fromBlank(16, 16)
  G.game_screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)

end

function game_state.onUpdate(dt)
  l.coil.update(dt)
  l.tick.update(dt)
end

function game_state.onDraw(dt)
  player:drawRect(0, 0, 8, 8, unpack{.4,.8,.2})
  G.game_screen:draw(player, 0,0)
end

function game_state.onKeyDown(k)
  Input.update(keys,k)
end

return game_state
