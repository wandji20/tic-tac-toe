require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'


# describe Player do
#   describe "#valid_name?" do
#     it "it returs true if name is valid" do
#       player1 = Player.new("wandji", "x")
#       expect(player1.valid_name?(player1.name)).to eq(true)
#     end
#   end
# end
 player1 = Player.new("wandji","X")
 player2 = Player.new("Elisha","O")
 my_game = Game.new(player1, player2)

 describe Game do
  it "Returns true for valid moves" do
    expect(my_game.valid_move?(1)).to_not eq(false)
  end

  it "Returns  for valid moves" do
    expect(my_game.valid_move?(10)).to eq(false)
  end

 end
