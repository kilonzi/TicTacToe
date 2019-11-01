# frozen_string_literal: true

class Move
  @@moves = Hash.new
  def valid_input?(move)
    #If Int and If between 1 - 9 and q and r
    if (0...9).include?(move)
        true
    else
        false 
    end
  end

  def move_to_index(move)
    index= move.to_i - 1
  end

  def move(board,index,players_sign)
    board.arr[index] = players_sign
  end

  def position_taken?(board,index)
    #check if the position is taken
    return (board.arr[index] == " ") ? false : true
  end

  def valid_move?(move)
    #If Int and If between 1 - 9
    return true ? (1...9).include?(move) : false
  end

  def turn?(board, player,choice)

    # convert input to index
    index = move_to_index(choice)
    until valid_input?(index)
      puts "Invalid move. Try another "
      choice = gets.chomp
    end
    index = move_to_index(choice)

    # if position is taken
    if !position_taken?(board, index)
      # make the move for index and show board
      move(board, index, player.sign)
    else
      until !position_taken?(board, index)
        puts "Position taken try again."
        choice = gets.chomp
        index = move_to_index(choice)
      end
      move(board, index, player.sign)
    end
    # else
    # ask for input again until you get a valid move
    # end
  end

  
end
