# frozen_string_literal: true

require_relative '../lib/board'
describe Board do
  let(:board) { Board.new }
  describe 'game' do
    it 'returns status when given a sign' do
      board.arr = ['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' ']
      expect(board.status('X')).to be == 'win'
    end

    it 'displays the board' do
      board.arr = ['O', 'X', 'X', 'X', ' ', ' ', ' ', ' ', ' ']
      the_board = " O | X | X \n "
      the_board += "----------- \n"
      the_board += " X |   |   \n"
      the_board += "----------- \n"
      the_board += "   |   |   \n"
      expect(board.display).to be == the_board
    end
  end

  describe 'game is win' do
    it 'when same marks are in a diagonal from left' do
      board.arr = ['O', ' ', ' ', ' ', 'O', ' ', ' ', ' ', 'O']
      expect(board.win?('O')).to be_truthy
    end
    it 'when same marks are in a diagonal from right' do
      board.arr = [' ', ' ', 'O', ' ', 'O', ' ', 'O', ' ', ' ']
      expect(board.win?('O')).to be_truthy
    end
    it 'when same marks are in the first row' do
      board.arr = ['O', 'O', 'O', ' ', ' ', ' ', ' ', ' ', ' ']
      expect(board.win?('O')).to be_truthy
    end
    it 'when same marks are in the second row' do
      board.arr = [' ', ' ', ' ', 'O', 'O', 'O', ' ', ' ', ' ']
      expect(board.win?('O')).to be_truthy
    end
    it 'when same marks are in the third row' do
      board.arr = [' ', ' ', ' ', ' ', ' ', ' ', 'O', 'O', 'O']
      expect(board.win?('O')).to be_truthy
    end
    it 'when same marks are in the first column' do
      board.arr = ['X', ' ', ' ', 'X', ' ', ' ', 'X', ' ', ' ']
      expect(board.win?('X')).to be_truthy
    end
    it 'when same marks are in the second column' do
      board.arr = [' ', 'X', ' ', ' ', 'X', ' ', ' ', 'X', ' ']
      expect(board.win?('X')).to be_truthy
    end
    it 'when same marks are in the third column' do
      board.arr = [' ', ' ', 'X', ' ', ' ', 'X', ' ', ' ', 'X']
      expect(board.win?('X')).to be_truthy
    end
  end
end
