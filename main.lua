require("src.code.states.splash_state")
require("src.code.states.menu_state")

function juno.onLoad(dt)
  juno.debug.setVisible(true)
  G.screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  state = "splash_state"
  if      state == "splash_state"  then
    splash_state.onLoad(dt)
  elseif  state == "game_state"    then

  elseif  state == "menu_state"    then
    menu_state.onLoad(dt)
  end
end

function juno.onUpdate(dt)
  if      state == "splash_state"   then
    splash_state.onUpdate(dt)
  elseif  state == "game_state"     then

  elseif  state == "menu_state"     then
    menu_state.onUpdate(dt)
  end
  print(state)
end

function juno.onDraw(dt)
  if      state == "splash_state"  then
    splash_state.onDraw(dt)
  elseif  state == "game_state"    then

  elseif  state == "menu_state"    then
    menu_state.onDraw(dt)
    -- juno.graphics.drawCircle(128, 128, 64, unpack{.7,.4,.7})
  end
end
