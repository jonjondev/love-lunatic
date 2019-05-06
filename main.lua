-- Import the required modules
local system = require("scripts/system")
local player = require("scripts/player")
local map = require("scripts/map")

function love.load()
  -- Initialise modules for use
  player.init()
  map.init()
end

function love.update(dt)
  -- Register game updates
  system.update()
  player.update_movement(dt)
end

function love.draw()
  -- Render game components on the screen
  map.render()
  player.render()
end