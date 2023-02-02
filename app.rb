# frozen_string_literal: true

require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'application'
require 'board'
require 'board_case'
require 'game'
require 'players'
require 'show'

# Application.new.perform
board = Board.new
game = Game.new(board)
game.turn()

binding.pry
