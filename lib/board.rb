require_relative './player'

class Board
  def initialize(player1, player2)
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @player1 = player1
    @player2 = player2
  end

  def display_board
    puts "  #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts ' ---+---+---'
    puts "  #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts ' ---+---+--- '
    puts "  #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end
