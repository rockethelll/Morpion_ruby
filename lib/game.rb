# frozen_string_literal: true

# Create the game rules
class Game
  attr_accessor :current_player, :status_game, :board, :array_players

  def initialize(item)
    puts 'Bienvenue au jeu de morpion ...'
    puts 'Joueur 1, quel est ton nom ?'
    create_player
    @board = item
    # TO DO : créé un board, met le status à "on going", défini un current_player
  end

  def create_player
    @array_players = []
    player1_name = gets.chomp
    puts "Veux-tu jouer les 'X' ou les 'O'"
    player1_symbol = gets.chomp.upcase
    @array_players << Players.new(player1_name, player1_symbol)
    puts 'Joueur 2, quel est ton prénom ?'
    player2_name = gets.chomp
    player2_symbol = player1_symbol == 'X' ? 'O' : 'X'
    @array_players << Players.new(player2_name, player2_symbol)
  end

  def turn(player)
    puts 'Quelle case joues-tu ?'
    choice = gets.chomp.upcase
    player_case = board.array_cases.select { |board_case| board_case.position == choice }.first
    if player_case.content.match(/\s/)
      player_case.content = player.value
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end
end
