#!/usr/bin/env ruby

puts 'Welcome to Tic-Tac-Toe'
puts
puts 'Input player names first'

# get player names

puts 'Input player 1 name: '
player1 = gets.chomp
puts
puts 'Input player 2 name: '
player2 = gets.chomp

puts
# Player 1 starts player 1 = X player 2 = Y

puts "#{player1}'s Turn'"
puts
puts "#{player1} inpur a number from 1 to 9"

board = " x |   |
-----------
   |   |
-----------
   |   |    "

puts board

puts
# Player 2 input

puts "#{player2}'s Turn"
puts
puts "#{player2} input a number from 1 to 9"

board = "   |   |
-----------
   | O |
-----------
   |   |    "

puts board

puts
# Player 1 input

puts "#{player1}'s Turn"
puts
puts "#{player1} input a number from 1 to 9"
puts
puts 'Invalid input: please input another number from 1 to 9'

board = "   |   |
-----------
   | O |
-----------
   |   |    "

puts board

puts
# Player 1 input

puts "#{player1}'s Turn"
puts
puts "#{player1} input a number from 1 to 9"
puts
puts 'You have made a winning move!'

board = "   |   |
-----------
   |  |
-----------
   |   | X  "

puts board

puts
# Player 2 input

puts "#{player2}'s Turn"
puts
puts "#{player2} input a number from 1 to 9"
puts
puts 'You have rached a draw!'

board = "   | X |
-----------
   |  |
-----------
   |   |   "

puts board

puts
# declare winner

puts "#{player1} is the winner"
puts "#{player2} is the winner"
puts "It's a draw!"
