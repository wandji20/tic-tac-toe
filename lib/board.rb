require_relative './player'

class Board
  def initialize(player1, player2)
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @player1 = player1
    @player2 = player2
  end

  # rubocop:disable Layout/LineLength
  def display_board
    "  #{@board[0]} | #{@board[1]} | #{@board[2]} \n ---+---+--- \n  #{@board[3]} | #{@board[4]} | #{@board[5]} \n ---+---+--- \n  #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  # rubocop:enable Layout/LineLength
end
