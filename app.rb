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
game = Game.new

binding.pry