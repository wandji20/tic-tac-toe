require_relative '../lib/player'

# describe Player do
#   describe "#valid_name?" do
#     it "it returs true if name is valid" do
#       player1 = Player.new("wandji", "x")
#       expect(player1.valid_name?(player1.name)).to eq(true)
#     end
#   end
# end
p player1 = Player.new("wandji", 'x')
p player1.valid_name?