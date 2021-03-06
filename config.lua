G = {
  author = "EmekaMonkey",
  version = "0.1.5",
  license = "MIT",
  title = "arbiter",
  width = 128,
  height = 128,
  scale = 4,
  font = juno.Font.fromFile("src/res/fonts/m5x7.ttf", 16),
  big_font = juno.Font.fromFile("src/res/fonts/m5x7.ttf", 32),
  world = {
    gravity = 200,
    friction = 10
  }
}

return {
  title = G.title,
  width = G.width * G.scale,
  height = G.height * G.scale
}
