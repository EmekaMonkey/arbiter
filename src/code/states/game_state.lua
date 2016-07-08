game_state = {}
local Player = require("src.code.player.player")

function game_state.onLoad(dt)
  G.game_screen = juno.Buffer.fromBlank(80,80)
  player = Player(nil,nil,"src/res/ui/cursor.png",G.game_screen)
end

function game_state.onUpdate(dt)
  G.game_screen:clear()
  player:update(dt)
  l.coil.update(dt)
  l.tick.update(dt)
end

function game_state.onDraw(dt)
  player:draw(dt)
end

function game_state.onKeyDown(k)
  player:update_keys(k)
end

return game_state
