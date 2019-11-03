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


puts "\n\n Welcome to the TIC-TAC TOE GAME. \n\n...Rules of the game... \n\n1. Each player has only move at a time. \n2. You can only play using numbers 1 - 9.\n3. Enter 'q' or 'quit' to quit game.\n ...HOW TO WIN... \nThe player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner."
puts "\n\nPlease enter the name of the first player and press Enter:"
valid = [1,2,3,4,5,6,7,8,9,"q","r"] #Will need to refactor this one!
player1 = gets.chomp
puts "#{player1}, your symbol will be #{PLAYER1_SIGN}"
puts "\nPlease enter the name of the second player and press Enter:"
player2 = gets.chomp
player2 = (player1 == player2)?([player2,"2nd"].join("-")) : (player2)
puts "#{player2}, your symbol will be #{PLAYER2_SIGN}"
puts "Loading game environment, please wait ......"
sleep(4)
puts "EMPTY BOARD"
sleep(2)
puts "Press Enter to start game"
game_on = true
while game_on
  current_player = player1
  puts "#{current_player}, enter your move, any number within 1-9 and press Enter. \nEnter 'q' to quit game. \n"
  move = gets.chomp
  puts valid.include?(move.to_i)? "BOARD": "You have made an invalid input, Please try again!" 
  #Check if the move location is taken
      #Then informs the use that the move is invalid then loop for user input till the move is valid
           #Change the status of game_on if quit or reset
  #Checks the game status after the last move
  #if game status is a win the the current player has won
     #Change the status of game_on
  #else if the game status is draw then declare it a draw
    #Change the status of game_on
  #else flip the players and let the second one play
     #Display the board
  if move.downcase == 'q'
    puts "Game has exited successfully. Good bye!"
    game_on = false
  else
    # puts "Time to prompt #{player2} to make a move"
    game_on = true
  end  
end