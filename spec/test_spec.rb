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
end

my_game = Game.new('e', 'w')
describe Game do
  it 'Returns true for valid moves' do
    expect(my_game.valid_move?(1)).to_not eq(false)
  end
end
