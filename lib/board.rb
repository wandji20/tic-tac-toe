class Board
  def initalize()
   
  end
  def board_display()
    @board_init = ["2 ", " ", " ", " ", " ", " ", " ", " ", " "]
    puts " #{@board_init[0]} | #{@board_init[1]} | #{@board_init[2]} "
    puts "-----------"
    puts " #{@board_init[3]} | #{@board_init[4]} | #{@board_init[5]} "
    puts "-----------"
    puts " #{@board_init[6]} | #{@board_init[7]} | #{@board_init[8]} "
  end
end

p my_board = Board.new
p my_board.board_display()