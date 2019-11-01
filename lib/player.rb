class Player
	attr_reader :name, :sign
	def initialize(name,sign)
			@name = name
			@sign = sign
	end

	def current_player(board,turn_count)
			#take in an argument of the game board and use the #turn_count method to determine if it is "X"'s turn or "O"'s.
	end
	def self.winner?(board)
	end
end