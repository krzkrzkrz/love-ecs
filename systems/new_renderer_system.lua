local System = require('libs/system')

local function new_renderer_system()
  local renderer = System.new { 'body', 'rect' }

  function renderer:load(entity)
    print 'found one!'
  end

  function renderer:update(dt, entity)
    local body = entity:get 'body'

    -- if love.keyboard.isDown('a') then
    --   body.x = body.x - (body.speed * dt)
    -- end
  end

  function renderer:draw(entity)
    local body = entity:get 'body'

    love.graphics.rectangle('fill', body.x, body.y, 32, 32)
  end

  return renderer
end

return new_renderer_system
