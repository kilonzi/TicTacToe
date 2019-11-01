# frozen_string_literal: true

class Move
  def valid_input?(move)
    # If Int and If between 1 - 9 and q and r
    if (0...9).include?(move)
      true
    else
      false
    end
  end

  def move_to_index(move)
    move.to_i - 1
  end

  def move(board, index, players_sign)
    board.arr[index] = players_sign
  end

  def position_taken?(board, index)
    # check if the position is taken
    board.arr[index] == ' ' ? false : true
  end

  def turn?(board, player, choice)
    # convert input to index
    index = move_to_index(choice)
    until valid_input?(index)
      puts 'Invalid move. Try another'
      choice = gets.chomp
    end
    index = move_to_index(choice)

    # if position is taken

    while position_taken?(board, index)
      puts 'Position taken try again.'
      choice = gets.chomp
      index = move_to_index(choice)
    end
    move(board, index, player.sign)
    # else
    # ask for input again until you get a valid move
    # end
  end
end
