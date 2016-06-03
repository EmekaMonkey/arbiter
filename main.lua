local state_manager  = require("src.code.states.splash_state")
state = "splash_state"
function juno.onLoad(dt)
  juno.debug.setVisible(true)
  G.screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)

  if      state == "splash_state"  then
    splash_state.onLoad(dt)
  elseif  state == "menu_state"     then

  elseif  state == "game_state"     then

  end
end

function juno.onUpdate(dt)
  if      state == "splash_state"   then
    splash_state.onUpdate(dt)
  elseif  state == "menu_state"     then

  elseif  state == "game_state"     then

  end
  print(state)
end

function juno.onDraw(dt)
  if      state == "splash_state"  then
    splash_state.onDraw(dt)
  elseif  state == "menu_state"    then
    juno.graphics.drawCircle(128, 128, 32, unpack{.4,.8,.6})
  elseif  state == "game_state"    then

  end
end
