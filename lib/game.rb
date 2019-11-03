# frozen_string_literal: true

require_relative('./board')

class Game
  def flip_players(current_player, player1, player2)
    current_player == player1 ? player2 : player1
  end

  def reset
    Board.new
  end
end
