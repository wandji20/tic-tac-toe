#!/usr/bin/env ruby
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game'

puts '######################'
puts 'Welcome to Tic-Tac-Toe'
puts

print 'Enter Name for player1: '
name1 = gets.strip

player1 = Player.new(name1)

until player1.valid_name?
  print 'Invalid name, Enter another name for youself: '
  name1 = gets.strip
  player1.name = name1
end

print 'Enter Sign: '
sign1 = gets.strip
player1.sign = sign1

until player1.valid_sign?
  print 'Invalid sign, Enter another sign for youself: '
  player1.sign = gets.strip
end

print 'Enter Name for player2: '
name2 = gets.strip
player2 = Player.new(name2)
until player2.valid_name? && player1.name != player2.name
  print 'Invalid name, Enter another name for youself: '
  name1 = gets.strip
  player2.name = name1
end

print 'Enter Sign: '
sign2 = gets.strip
player2.sign = sign2

while (player1.sign == player2.sign) || !player2.valid_sign?
  print 'Invalid sign. Enter another sign for youself: '
  player2.sign = gets.strip
end

puts "Game started by #{player1.name} and #{player2.name}"

def turn
  @current_player = @turn_count.odd? ? @player1 : @player2
  print "#{@current_player.name}, Please choose a number between 1-9: "
  position = gets.strip.to_i
  position -= 1
  if valid_move?(position)
    @board[position] = @current_player.sign
  else
    puts 'invalid position or input'
    turn
  end
end

def turn_counter
  @turn_count = 0
  until over?
    @turn_count += 1
    turn
    puts '############'
    puts display_board
    puts '############'
  end
  puts 'Game Over '
end

game = Game.new(player1, player2)
game.display_board
puts game.play
