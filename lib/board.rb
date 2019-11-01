
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
    attr_accessor :arr
    def initialize()
      @arr =  [" "," "," "," "," "," "," "," "," "]
    end

    def status(sign) 
      if is_win?(sign)
        return 'win'
      elsif @arr.count{|i| i==" "} == 0
        return 'draw'
      end
    end


    def is_win?(sign)

      if (@arr[0]==sign && @arr[1]==sign && @arr[2]==sign ) ||
         (@arr[3]==sign && @arr[4]==sign && @arr[5]==sign ) ||
         (@arr[6]==sign && @arr[7]==sign && @arr[8]==sign ) ||
         (@arr[0]==sign && @arr[3]==sign && @arr[6]==sign ) ||
         (@arr[1]==sign && @arr[4]==sign && @arr[7]==sign ) ||
         (@arr[2]==sign && @arr[5]==sign && @arr[8]==sign ) ||
         (@arr[0]==sign && @arr[4]==sign && @arr[8]==sign ) ||
         (@arr[2]==sign && @arr[4]==sign && @arr[6]==sign )
        return true
      else 
        return false
      end

    end


    def self.won?
    end

    def self.full?
    end

    def self.draw?
    end

    def self.over?
    end

    def display
      puts " #{@arr[0]} | #{@arr[1]} | #{@arr[2]} "
      puts "-----------"
      puts " #{@arr[3]} | #{@arr[4]} | #{@arr[5]} "
      puts "-----------"
      puts " #{@arr[6]} | #{@arr[7]} | #{@arr[8]} "
    end

    def turn_count 
      
    end

end