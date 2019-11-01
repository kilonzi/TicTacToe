
class Board
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  
  ]
  attr_reader :arr
    def initialize()
        @arr =  [" "," "," "," "," "," "," "," "," "]
    end

    def self.won?
    end

    def self.full?
    end

    def self.draw?
    end

    def self.over?
    end

    def turn_count(sign)
      x = 1,2,3,4,5
      o = 0
      #number of turns that have been played and who is to play next
    end
end