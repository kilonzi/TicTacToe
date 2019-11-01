class Move
		@@moves = Hash.new
    def valid_input?(move)
        #If Int and If between 1 - 9 and q and r
        if move.to_i == 1..9 || move.downcase == "r" || move.downcase == "q"
            true
        else
            false    
    end

    def move_to_index(move)
        index= move -1
        index    
    end

    def move(board,index,players_sign)
				# board = [" "," "," "," "," "," "," "," "," "]
        board[index] = players_sign

    end

    def position_taken?(board,index)
        #

    end
    def valid_move(move)
        #If Int and If between 1 - 9 and q and r

        #show board 
    end
    def turn(board, player, move)
				# ask for input
        # get input
				# convert input to index
				index = move_to_index(index)
				# if position is taken
				unless position_taken?(board, index)
					# make the move for index and show board
					move(board, index, player.sign)
					turn_count(sign)
				end
        # else
        # ask for input again until you get a valid move
        # end
    end

    def turn_count(board)
       return board.count("")
        #number of turns that have been played and who is to play next
    end
end
