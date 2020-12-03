require_relative './player'

class Board
  def initialize(player1, player2)
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @player1 = player1
    @player2 = player2
  end

  def display_board
    [" #{@board[0]} | #{@board[1]} | #{@board[2]} ",
     '-----------',
     " #{@board[3]} | #{@board[4]} | #{@board[5]} ",
     '-----------',
     " #{@board[6]} | #{@board[7]} | #{@board[8]} "]
  end
end
