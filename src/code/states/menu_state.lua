menu_state = {}
local Button = require("src.code.ui.button")

function menu_state.onLoad(dt)
  G.menu_screen = juno.Buffer.fromBlank(G.width * G.scale, G.height * G.scale)
  G.menu_cursor = juno.Buffer.fromFile("src/res/ui/cursor.png")
  play = Button("Play", 32, G.menu_screen, "", [[
  state = "game_state"]], [[
  G.menu_screen:setColor(unpack{.2, .2, .2})
  G.menu_screen:draw(G.menu_cursor, play.x - 2, play.y)
  G.menu_screen:drawText(G.font, play.txt, play.x + 8, play.y)
  ]], [[
  G.menu_screen:setColor(unpack{1, 1, 1})
  G.menu_screen:drawText(G.font, play.txt, play.x, play.y)
  ]], "x")
  credits = Button("Credits", 64, G.menu_screen, "", [[
  print(G.author .. " is the Author")]], [[
  G.menu_screen:setColor(unpack{.2, .2, .2})
  G.menu_screen:draw(G.menu_cursor, credits.x - 2, credits.y)
  G.menu_screen:drawText(G.font, credits.txt, credits.x + 8, credits.y)
  ]],[[
  G.menu_screen:setColor(unpack{1, 1, 1})
  G.menu_screen:drawText(G.font, credits.txt, credits.x, credits.y)
  ]], "x")
  quit = Button("Quit", 96, G.menu_screen, "", [[
  os.exit()]], [[
  G.menu_screen:setColor(unpack{.2, .2, .2})
  G.menu_screen:draw(G.menu_cursor, quit.x - 2, quit.y)
  G.menu_screen:drawText(G.font, quit.txt, quit.x + 8, quit.y)
  ]],[[
  G.menu_screen:setColor(unpack{1, 1, 1})
  G.menu_screen:drawText(G.font, quit.txt, quit.x, quit.y)
  ]], "x")
end

function menu_state.onUpdate(dt)

end

function menu_state.onDraw(dt)
  G.menu_screen:clear()
  G.menu_screen:setColor(unpack{1, 1, 1})
  play:draw()
  credits:draw()
  quit:draw()
end

function menu_state.onKeyDown(k)
  Button.check(k,"inf")
  play:keyCheck(k)
  credits:keyCheck(k)
  quit:keyCheck(k)
end

return menu_state
