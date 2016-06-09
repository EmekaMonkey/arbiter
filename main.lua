l = require("src.code.libloader")
require("src.code.states.splash_state")
require("src.code.states.menu_state")
require("src.code.states.game_state")
require("src.code.rect")
--[[
  no x, y values higher that 128 !!!!!!!!!!!!!!!!
]]

function juno.onLoad(dt)
  juno.debug.setVisible(true)
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
    juno.graphics.copyPixels(G.splash_screen,0,0,nil,G.scale)

  elseif  state == "game_state"    then
    game_state.onLoad(dt)
    juno.graphics.copyPixels(G.game_screen,0,0,nil,G.scale)

  elseif  state == "menu_state"    then
    menu_state.onDraw(dt)
    juno.graphics.copyPixels(G.menu_screen,0,0,nil,G.scale)
  end
end

function juno.onKeyDown(k)
  if k == "escape" then os.exit() end
  if      state == "splash_state"  then
    splash_state.onKeyDown(k)
  elseif  state == "game_state"    then
    game_state.onKeyDown(k)
  elseif  state == "menu_state"    then
    menu_state.onKeyDown(k)
  end
end
