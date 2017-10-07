local World               = require('libs/world')
local Component           = require('libs/component')
local System              = require('libs/system')
local coms                = require('components/common_components')
local health_component    = require('components/health_component')
local new_renderer_system = require('systems/new_renderer_system')
local hero_system         = require('systems/hero_system')

function love.load()
  World:register(new_renderer_system())

  World:create()
    :madd(coms.new_body(100, 100, 20))
    :madd(coms.new_rectangle_component())

  World:register(hero_system())

  World:create()
    :madd(coms.new_body(300, 100, 20))
    :madd(coms.new_rectangle_component())

  -- World:assemble({
  --   { coms.new_body, 300, 100, 20 },
  --   { coms.new_rectangle_component }
  -- })
end

function love.update(dt)
  World:update(dt)
end

function love.draw()
  World:draw()
end
