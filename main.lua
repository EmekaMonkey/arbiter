require("src.code.libs")
require("src.code.states.splash_state")
require("src.code.states.menu_state")
require("src.code.states.game_state")
require("src.code.ui.button")

local debuglog = 0
print(juno.system.info("os"))

function juno.onLoad(dt)
  state = "splash_state"
  menu_state.onLoad(dt)
  lib._.trace("Menu Assets Loaded")
  splash_state.onLoad(dt)
  lib._.trace("Splash Assets Loaded")
  game_state.onLoad(dt)
  lib._.trace("Game Assets Loaded")

end

function juno.onUpdate(dt)
  if      state == "splash_state"   then
    splash_state.onUpdate(dt)
  elseif  state == "game_state"     then
    game_state.onUpdate(dt)
  elseif  state == "menu_state"     then
    menu_state.onUpdate(dt)
  end
end

function juno.onDraw(dt)
  if      state == "splash_state"  then
    splash_state.onDraw(dt)
    juno.graphics.copyPixels(G.splash_screen,0,0,nil,G.scale)

  elseif  state == "game_state"    then
    lib._.hotswap("src.code.states.game_state")
    game_state.onDraw(dt)
    juno.graphics.copyPixels(G.game_screen,0,0,nil,G.scale)

  elseif  state == "menu_state"    then
    lib._.hotswap("src.code.states.menu_state")
    menu_state.onDraw(dt)
    juno.graphics.copyPixels(G.menu_screen,0,0,nil,G.scale)
  end
end

function juno.onKeyDown(k)
  if k == "escape" then os.exit() end
  if k == "d" and debuglog < 1 then
    juno.debug.setVisible(true)
    debuglog = 1
  end
  if      state == "splash_state"  then
    splash_state.onKeyDown(k)
  elseif  state == "game_state"    then
    game_state.onKeyDown(k)
  elseif  state == "menu_state"    then
    menu_state.onKeyDown(k)
  end
end
