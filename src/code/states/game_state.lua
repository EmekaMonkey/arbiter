coil = require("src.code.lib.coil")
tick = require("src.code.lib.tick")
game_state = {}

function game_state.onLoad(dt)
end

function game_state.onUpdate(dt)
  coil.update(dt)
  tick.update(dt)
end

function game_state.onDraw(dt)
end

return game_state
