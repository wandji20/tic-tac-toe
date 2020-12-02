#!/usr/bin/env ruby

puts 'Welcome to Tic-Tac-Toe'
puts 'Input player names first'

# get player names

puts 'Input player 1 name: '
player1 = gets.chomp

puts 'Input player 2 name: '
player2 = gets.chomp

# Player 1 starts player 1 = X player 2 = Y

puts "#{player1} inpur a number from 1 to 9"

board = " x |   |
-----------
   |   |
-----------
   |   |    "

puts board

# Player 2 input

puts "#{player2} input a number from 1 to 9"

board = "   |   |
-----------
   | O |
-----------
   |   |    "

puts board

# declare winner

puts "#{player1} is the winner"
puts "#{player2} is the winner"
puts "It's a draw!"
