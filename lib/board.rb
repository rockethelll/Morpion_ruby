# frozen_string_literal: true

# Create board game wich contain 3 * 3 board_cases
class Board
  attr_accessor :array_cases

  def initialize
    @a1 = BoardCase.new('A1', ' ')
    @a2 = BoardCase.new('A2', ' ')
    @a3 = BoardCase.new('A3', 'X')
    @b1 = BoardCase.new('B1', ' ')
    @b2 = BoardCase.new('B2', 'X')
    @b3 = BoardCase.new('B3', ' ')
    @c1 = BoardCase.new('C1', 'X')
    @c2 = BoardCase.new('C2', ' ')
    @c3 = BoardCase.new('C3', ' ')
    @array_cases = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  end

  def play_turn
    # TO DO : une méthode qui :
    # 1) demande au bon joueur ce qu'il souhaite faire
    # 2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  # Une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  def victory
    if @array_cases[0].content == @array_cases[1].content && @array_cases[1].content == @array_cases[2].content && @array_cases[2].content != ' '
      true
    elsif @array_cases[3].content == @array_cases[4].content && @array_cases[4].content == @array_cases[5].content && @array_cases[5].content != ' '
      true
    elsif @array_cases[6].content == @array_cases[7].content && @array_cases[7].content == @array_cases[8].content && @array_cases[8].content != ' '
      true
    elsif @array_cases[0].content == @array_cases[3].content && @array_cases[3].content == @array_cases[6].content && @array_cases[6].content != ' '
      true
    elsif @array_cases[1].content == @array_cases[4].content && @array_cases[4].content == @array_cases[7].content && @array_cases[7].content != ' '
      true
    elsif @array_cases[2].content == @array_cases[5].content && @array_cases[5].content == @array_cases[8].content && @array_cases[8].content != ' '
      true
    elsif @array_cases[0].content == @array_cases[4].content && @array_cases[4].content == @array_cases[8].content && @array_cases[8].content != ' '
      true
    elsif @array_cases[6].content == @array_cases[2].content && @array_cases[4].content == @array_cases[6].content && @array_cases[6].content != ' '
      true
    else
      false
    end
  end
end
