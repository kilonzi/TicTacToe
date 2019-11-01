#!/usr/bin/env ruby
require_relative('../lib/board')
require_relative('../lib/game')
require_relative('../lib/move')
require_relative('../lib/player')
#Display welcome message and rules
#Ask the player1 name 
#Assign symbol to player 1
#Ask player 2 name
#Checking for same name, if same ask player 2 for another name
#Assign symbol to player 2
#Display an empty board
#Ask users to press a key to start game
#Asking the user for their move by position 1-9 
#Prompt player 1 for move
#Prompt player 2 for move
#Display winner and name or draw

puts "Welcome to the TIC-TAC TOE GAME. \nRules of the game: \n1.Each player has only move at a time. \n2. A player can put only assigned symbol. \nHOW TO WIN: \nThe player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner."
puts "Please enter the name of the first player:"
player1_name = gets.chomp
player1 = Player.new(player1_name,"X")
puts "#{player1.name}, you have been assigned #{player1.sign}"

puts "Please enter the name of the second player:"
player2_name = gets.chomp
player2 = Player.new(player2_name,"O")
puts "#{player2.name}, you have been assigned #{player2.sign}"

#set the board
board = Board.new
moves = Move.new
game = Game.new
board.display

current_player = player1
while true
  
  #
  puts "#{current_player.name} Enter your move, any number within 1-9 and press Enter. \nEnter 'q' or 'quit' to quit game. \Enter r to Restart the game"
  # ask for input
  # get input
  choice = gets.chomp

  if (1..9).include?(choice.to_i)
    puts "#{current_player.name}, your choice is #{choice}"
    moves.turn?(board, current_player,choice)
    board.display

    case board.status(current_player.sign)
      when 'win'
        puts "#{current_player.name} you have won the game"
        break
      when 'draw'
        puts "It is a draw."
      else 
        current_player = game.flip_players(current_player, player1,player2)
        puts "Current is now #{current_player.name} "
      end

  elsif choice == 'q'
    puts "You have quit the game. Bye"
    break
  elsif choice == 'r'
    board = game.reset(board)
    puts "Game was reset"
    board.display
  else
    puts "You made an invalid choice."
  end

end