class Game < Board
  def position_taken?(input)
    @board[input] != ' '
  end

  def valid_move?(input)
    input.between?(0, 8) && !position_taken?(input)
  end

  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [6, 4, 2],
    [0, 4, 8]
  ].freeze

  def draw?
    !won? && full?
  end

  def full?
    @turn_count == 9
  end

  def won?
    WIN_COMBINATIONS.detect do |combo|
      @board[combo[0]] == @board[combo[1]] &&
        @board[combo[1]] == @board[combo[2]] &&
        position_taken?(combo[0])
    end
  end

  def over?
    won? || full? || draw?
  end
end
