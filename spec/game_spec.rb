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

  describe '#valid_move?' do
    it 'returns false if input is not between 1 and 9' do
      expect(game.valid_move?(10)).to eql(false)
    end

    it 'returns true if input is between 1 and 9' do
      expect(game.valid_move?(5)).to eql(true)
    end

    it 'returns false if input is not between 1 and 9' do
      expect(game.valid_move?(15)).to eql(false)
    end
  end

  describe '#won?' do
    it 'returns winning combination when the win combination is found' do
      game.board = ['X ', 'X ', 'X ', 'O ', 'X ', 'O ', ' ', ' ', ' ']
      expect(game.won?).to eql([0, 1, 2])
    end

    it 'returns winning combination when the win combination is found' do
      game.board = ['X ', 'O ', 'X ', 'O ', 'O ', 'X ', '0 ', '0 ', '0 ']
      expect(game.won?).to eql([6, 7, 8])
    end

    it 'returns nil if win combination not found' do
      game.board = ['X ', 'X ', 'O ', 'O ', 'X ', 'O ', ' ', ' ', ' ']
      expect(game.won?).to eql(nil)
    end
  end
end
