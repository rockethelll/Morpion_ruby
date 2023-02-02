# frozen_string_literal: true

# Create the game rules
class Game
  attr_accessor :current_player, :status_game, :board, :array_players

  def initialize
    puts 'Bienvenue au jeu de morpion ...'
    puts 'Joueur 1, quel est ton nom ?'
    create_player
  end
  
  def create_player
    @array_players = []
    player1_name = gets.chomp
    puts "Veux-tu jouer les 'X' ou les 'O'"
    player1_value = gets.chomp.upcase
    @array_players << Players.new(player1_name, player1_value)
    puts 'Joueur 2, quel est ton prénom ?'
    player2_name = gets.chomp
    player2_value = player1_value == 'X' ? 'O' : 'X'
    @array_players << Players.new(player2_name, player2_value)
  end
end
