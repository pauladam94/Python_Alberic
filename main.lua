Character = require "character"

function love.load()
  characters = {}

  table.insert(characters, Character:new(200))
  table.insert(characters, Character:new(500, {0, 1, 1}))
end

function love.draw()
  for j, char in pairs(characters) do
    print("index: ", j)
    print("in draw : ", tostring(char))
    char:draw()
  end
end

-- love.graphics.circle()

function love.update()
end
