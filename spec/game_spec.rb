require_relative '../lib/board'
require_relative '../lib/game'

describe Game do
  player1 = Player.new('first')
  player1.sign = 'X'
  player2 = Player.new('second')
  player2.sign = 'Y'
  game = Game.new(player1, player2)

  describe '#position_taken?' do
    it 'returns false if position taken' do
      game.position_taken?(2)
      expect(game.position_taken?(2)).to eql(false)
    end

    it 'returns true if position empty' do
      game.position_taken?(4)
      expect(game.position_taken?(9)).to eql(true)
    end

    it 'returns false if position taken' do
      game.position_taken?(8)
      expect(game.position_taken?(8)).to eql(false)
    end
  end
end