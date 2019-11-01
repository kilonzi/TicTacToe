# frozen_string_literal: true

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/LineLength
class Board
  attr_accessor :arr
  def initialize
    @arr = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def status(sign)
    if is_win?(sign)
      'win'
    elsif @arr.count{ |i| i == ' '} == 0
      'draw'
    end
  end

  def is_win?(sign)
    if (@arr[0] == sign && @arr[1] == sign && @arr[2] == sign) || (@arr[3] == sign && @arr[4] == sign && @arr[5] == sign) || (@arr[6] == sign && @arr[7] == sign && @arr[8] == sign) || (@arr[0] == sign && @arr[3] == sign && @arr[6] == sign) || (@arr[1] == sign && @arr[4] == sign && @arr[7] == sign) || (@arr[2] == sign && @arr[5] == sign && @arr[8] == sign) || (@arr[0] == sign && @arr[4] == sign && @arr[8] == sign) || (@arr[2] == sign && @arr[4] == sign && @arr[6] == sign)
      true
    else
      false
    end
  end

  def display
    puts " #{@arr[0]} | #{@arr[1]} | #{@arr[2]} "
    puts '-----------'
    puts " #{@arr[3]} | #{@arr[4]} | #{@arr[5]} "
    puts '-----------'
    puts " #{@arr[6]} | #{@arr[7]} | #{@arr[8]} "
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/LineLength
