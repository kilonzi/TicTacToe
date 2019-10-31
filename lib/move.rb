class Move
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
        board = [" "," "," "," "," "," "," "," "," "]
        

    end

    def position_taken?(board,index)
        #

    end
    def valid_move(move)
        #If Int and If between 1 - 9 and q and r

        #show board 
    end
    def turn
        # ask for input
        # get input
        # convert input to index
        # if move is valid
        # make the move for index and show board
        # else
        # ask for input again until you get a valid move
        # end
    end

    def turn_count(sign)
        {x=>1, o=>1}
        x = [1,3,5,7,9]
        o = [2,4,6,8]
        #number of turns that have been played and who is to play next
    end
end
