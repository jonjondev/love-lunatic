-- Import the required modules
local system = require("scripts.system")
local map = require("scripts.map")
local map_editor = require("map_editor")

function love.load()
  -- Set the window title
  love.window.setTitle("Map Editor")

  -- Initialise modules for use
  map.init()

  -- Copy across required values from the maps module to the editor
  map_editor.map_config = map.map_config
  map_editor.tiles = map.tiles
  map_editor.game_map = map.game_map
end

function love.update(dt)
  -- Register game updates
  system.update()
  map_editor.update()

  -- Update the map to display changes
  map.game_map = map_editor.game_map
end

function love.draw()
  -- Render game components on the screen
  map.render()
  system.render()
  map_editor.render()
end