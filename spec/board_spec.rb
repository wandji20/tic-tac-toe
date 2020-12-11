require_relative '../lib/board'
require_relative '../lib/game'

describe Game do
  player1 = Player.new('first')
  player1.sign = 'X'
  player2 = Player.new('second')
  player2.sign = 'Y'
  game = Game.new(player1, player2)
  describe '#display_board' do
    it 'updates every turn' do
      game.board = ['X', 'O', '', ' ', 'X', '', ' ', 'O', 'X']
      expect(game.display_board).to eql([
                                          ' X | O |  ',
                                          '-----------',
                                          '   | X |  ',
                                          '-----------',
                                          '   | O | X '
                                        ])
    end

    it 'updates every turn' do
      game.board = ['X', 'X', 'X', 'O', 'O', '', ' ', ' ', ' ']
      expect(game.display_board).to eql([
                                          ' X | X | X ',
                                          '-----------',
                                          ' O | O |  ',
                                          '-----------',
                                          '   |   |   '
                                        ])
    end

    it 'updates every turn' do
      game.board = ['X', 'X', '', 'O', 'O', 'O', 'X', ' ', ' ']
      expect(game.display_board).to eql([
                                          ' X | X |  ',
                                          '-----------',
                                          ' O | O | O ',
                                          '-----------',
                                          ' X |   |   '
                                        ])
    end

    it 'updates every turn' do
      game.board = []
      expect(game.display_board).to eql([
                                          '  |  |  ',
                                          '-----------',
                                          '  |  |  ',
                                          '-----------',
                                          '  |  |  '
                                        ])
    end
  end
end
