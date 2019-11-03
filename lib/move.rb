# frozen_string_literal: true

class Move
  def valid_input?(move)
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

  def position_taken?(board, choice)
    board.arr[move_to_index(choice)] != ' '
  end

  def turn?(board, player, choice)
    index = move_to_index(choice)
    until valid_input?(index)
      puts 'Invalid move. Try another'
      choice = gets.chomp
    end
    index = move_to_index(choice)
    move(board, index, player.sign)
  end
end
