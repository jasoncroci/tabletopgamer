#!/usr/bin/ruby
require 'gosu'
require 'yaml'

# Classes
require './main/window/window'
require './main/game/game_properties'
require './main/game/game'

# UI
require './ui/board/board'

# Modules
require './lib/modules/keyboard_input'

game = Game.new
game.window.show