# frozen_string_literal: true
require_relative('./board')

class Game

 	def flip_players(current_player, player1, player2)
	 	return current_player == player1 ? player2 : player1
	end
	
	def reset(board)
		board = Board.new
		return board
	end
end
