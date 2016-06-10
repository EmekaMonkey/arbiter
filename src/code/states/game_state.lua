game_state = {}
local Player = require("src.code.player.player")

function game_state.onLoad(dt)
  G.game_screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  player = Player(10,10,nil,nil,nil,"src/resources/ui/cursor.png",0,0,nil,nil,G.game_screen)
end

function game_state.onUpdate(dt)
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
