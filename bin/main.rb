#!/usr/bin/env ruby
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game'

puts '######################'
puts 'Welcome to Tic-Tac-Toe'
puts

def valid_sign?(input)
  input.length == 1
end

print 'Enter Name for player1: '
@name1 = gets.chomp
print 'Enter Sign: '
@sign1 = gets.chomp

until valid_sign?(@sign1)
  print 'Invalid sign, Enter another sign for youself: '
  @sign1 = gets.chomp
end

player1 = Player.new(@name1, @sign1)

print 'Enter Name for player2: '
@name2 = gets.chomp
while @name1 == @name2
  print 'This name is already taken Enter another name: '
  @name2 = gets.chomp
end

print 'Enter Sign: '
@sign2 = gets.chomp
while (@sign1 == @sign2) || !valid_sign?(@sign2)
  print 'Invalid sign. Enter another sign for youself: '
  @sign2 = gets.chomp
end

player2 = Player.new(@name2, @sign2)
puts "Game started by #{player1.name} and #{player2.name}"

def turn
  @current_player = @turn_count.odd? ? @player1 : @player2
  print "#{@current_player.name}, Please choose a number between 1-9: "
  position = gets.chomp.to_i
  position -= 1
  if valid_move?(position)
    @board[position] = @current_player.sign
  else
    puts 'invalid position or input'
    turn
  end
end

def play
  @turn_count = 0
  until over?
    @turn_count += 1
    turn
    puts '#################'
    display_board
  end
  print 'Game Over '

  if won?
    puts "Congratulations #{@current_player.name} you are the winner."
  else
    puts 'Its a draw, better luck next time !!'
  end
end

game = Game.new(player1, player2)
game.display_board
game.play
