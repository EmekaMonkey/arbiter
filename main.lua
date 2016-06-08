l = require("src.code.libloader")
require("src.code.states.splash_state")
require("src.code.states.menu_state")
require("src.code.states.game_state")
require("src.code.rect")

function juno.onLoad(dt)
  juno.debug.setVisible(true)
  G.screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  state = "splash_state"
  menu_state.onLoad(dt)
  splash_state.onLoad(dt)
  game_state.onLoad(dt)

end

function juno.onUpdate(dt)
  if      state == "splash_state"   then
    splash_state.onUpdate(dt)
  elseif  state == "game_state"     then
    game_state.onLoad(dt)
  elseif  state == "menu_state"     then
    menu_state.onUpdate(dt)
  end
end

function juno.onDraw(dt)
  if      state == "splash_state"  then
    splash_state.onDraw(dt)
  elseif  state == "game_state"    then
    game_state.onLoad(dt)
  elseif  state == "menu_state"    then
    menu_state.onDraw(dt)
  end
end

function juno.onKeyDown(k)
  if k == "escape" then
      os.exit()
  end
  if      state == "splash_state"  then
    splash_state.onKeyDown(k)
  elseif  state == "game_state"    then
    game_state.onKeyDown(k)
  elseif  state == "menu_state"    then
    menu_state.onKeyDown(k)
  end
end
