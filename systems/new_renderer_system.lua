local System = require('libs/system')

local function new_renderer_system()
  local renderer = System.new {'body', 'rect'}

  function renderer:load(entity)
    print 'found one!'
  end

  function renderer:draw(entity)
    local body = entity:get 'body'
    love.graphics.rectangle('fill', body.x, body.y, 32, 32)
  end

  return renderer
end

return new_renderer_system
