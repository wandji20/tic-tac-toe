require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'

describe Player do
  describe '#valid_name?' do
    it 'returns true if name is valid' do
      player1 = Player.new('wandji')
      expect(player1.valid_name?).to eq(true)
    end
  end
  describe '#valid_sign?' do
    it 'it returns true if the sign is correct' do
      player1 = Player.new('elisha')
      player1.sign = 'O'
      expect(player1.valid_sign?).to eq(true)
    end
  end
end

my_game = Game.new('e', 'w')
my_game.board = ['X ', 'X ', 'O ', 'O ', 'O ', 'O ', ' ', ' ', ' ']
describe Game do
  it 'Returns true for valid moves' do
    expect(my_game.valid_move?(1)).to eq(false)
  end
  it 'returns true when the win combination is found' do
    expect(my_game.won?).to eq([3, 4, 5])
  end
  it 'returns true if position is taken' do
    expect(my_game.position_taken?(2)).to eq(true)
  end
end

# describe game = Game.new do
#   it 'returns true when the win combination is found' do
#   expect(
#   end
# end
