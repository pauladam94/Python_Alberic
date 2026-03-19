local Character = {
  number = 0
}

function Character:new(pos, height, color)
  object = {}
  setmetatable(object, Character)
  self.__index = self
  self.number = self.number + 1

  color = color or { 1, 0, 0, 1 }
  pos = pos or 0
  height = height or 100
  dialogue = dialogue or function() return "" end
  selected = false

  object.color = color
  object.pos = pos
  object.height = height
  object.dialogue = dialogue
  object.selected = selected
  return object
end

function Character:draw()
  love.graphics.setColor(self.color)
  love.graphics.rectangle("fill", self.pos, 200, 20, self.height)

  if self.selected then
    love.graphics.setLineWidth(10)
    love.graphics.setColor({1, 1, 1, 1})
    love.graphics.rectangle("line", self.pos, 200, 20, self.height)
  end
  love.graphics.print(self.dialogue(), self.pos - 10)
end

return Character
