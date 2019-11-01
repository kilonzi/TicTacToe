#!/usr/bin/env ruby

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

PLAYER1_SIGN = "X"
PLAYER2_SIGN = "O"
puts "Welcome to the TIC-TAC TOE GAME. \nRules of the game: \n1.Each player has only move at a time. \n2. A player can put only assigned symbol. \nHOW TO WIN: \nThe player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner."
puts "Please enter the name of the first player:"
player1 = gets.chomp
puts "#{player1}, you have been assigned #{PLAYER1_SIGN}"

puts "Please enter the name of the second player:"
player2 = gets.chomp
puts "#{player2}, you have been assigned #{PLAYER2_SIGN}"

puts "EMPTY BOARD"
puts "Press Enter to start game"
# start_key = get.chomp
while true
  current_player = player1
  puts "#{current_player} Enter your move, any number within 1-9 and press Enter. \nEnter 'q' or 'quit' to quit game. \Enter r to Restart the game"
  choice = gets.chomp
  #
  if choice.to_i == 1..9
    puts "#{current_player}, your choice is #{choice}"

    case game_status
      when 'win'
        puts "#{current_player} you have won the game"
        break
      when 'draw'
        puts "It is a draw."
      else 
        flip_players
      end
  elsif choice == 'q'
    Game.quit
  elsif choice == 'r'
    reset_game
  else
    puts "You made an invalid choice."
  end

end