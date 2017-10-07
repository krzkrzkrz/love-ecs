local Component = require('libs/component')

local function health_component(x, y)
  local health_component = Component.new 'health_component'

  health_component.current = 80
  health_component.maximum = 80
  health_component.regeneration = 0.005

  return health_component
end

return health_component
