require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'

describe Player do
  subject { Player.new(name.to_s) }
  describe '#valid_name?' do
    let(:name) { 'wandji' }
    it 'returns true if name is valid' do
      expect(subject.valid_name?).to eq(true)
    end
  end
  describe '#valid_sign?' do
    let(:name) { 'elisha' }
    it 'it returns true if the sign is correct' do
      subject.sign = 'O'
      expect(subject.valid_sign?).to eq(true)
    end
  end
end

describe Game do
  subject { Game.new('elisha', 'wandji') }
  it 'Returns true for valid moves' do
    subject.board = ['X ', 'X ', 'O ', 'O ', 'O ', 'O ', ' ', ' ', ' ']
    expect(subject.valid_move?(1)).to eq(false)
  end
  it 'returns true when the win combination is found' do
    subject.board = ['X ', 'X ', 'O ', 'O ', 'O ', 'O ', ' ', ' ', ' ']
    expect(subject.won?).to eq([3, 4, 5])
  end
  it 'returns true if position is taken' do
    subject.board = ['X ', 'X ', 'O ', 'O ', 'O ', 'O ', ' ', ' ', ' ']
    expect(subject.position_taken?(2)).to eq(true)
  end
end
