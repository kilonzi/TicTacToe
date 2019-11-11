#!/usr/bin/env ruby

puts "Welcome to the TIC-TAC TOE GAME. \nRules of the game: \n1.Each player has only move at a time. \n2. A player can put only assigned symbol. \nHOW TO WIN: \nThe player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner."
puts "Please enter the name of the first player:"
player1_name = gets.chomp
puts "#{player1_name}, you have been assigned X"

puts "Please enter the name of the second player:"
player2_name = gets.chomp
puts "#{player2_name}, you have been assigned O"

puts "DISPLAY BOARD"
current_player = player1_name
game_status = true
board_status = true
while game_status
  puts "#{current_player} Enter your move, any number within 1-9 and press Enter. \nEnter 'q' or 'quit' to quit game. \Enter r to Restart the game"
  choice = gets.chomp
  if (1..9).include?(choice.to_i)
    puts "#{current_player}, your choice is #{choice}"
    #If position is taken then ask the use to try again
    position_taken = false
    while position_taken
      puts 'Position taken try again.'
      choice = gets.chomp
      position_taken = false
    end
    puts "DISPLAY BOARD"

    case board_status
      when 'win'
        puts "#{current_player} you have won the game"
        break
      when 'draw'
        puts "It is a draw."
      else 
        if current_player == player1_name
          current_player = player2_name
        elsif
          current_player = player1_name
        end
        puts "Current is now #{current_player} "
      end
  elsif choice == 'q'
    puts "You have quit the game. Bye"
    break
  elsif choice == 'r'
    puts "Game was reset"
    puts "DISPLAY NEW BOARD"
    break
  else
    puts "You made an invalid choice."
  end

end