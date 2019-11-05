# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
require_relative('../lib/move')
require_relative('../lib/board')
describe Move do
  let(:move) { Move.new }
  context 'a move' do
    it ' is valid when choice between 0 and 8' do
      expect(move).to be_valid_input(rand(0..8))
    end

    it ' is not valid when choice different from between 1 and 9' do
      expect(move).not_to be_valid_input(rand(10..1000))
    end

    it 'convert player input into board index' do
      my_move = rand(1..9)
      expect(move.move_to_index(my_move)).to eq(my_move - 1)
    end

    it 'is assigned to position 1 on the board' do
      board = Board.new
      move.move(board, 0, 'X')
      expect(board.arr).to be == ['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end
    it 'is assigned to position 2 on the board' do
      board = Board.new
      move.move(board, 1, 'X')
      expect(board.arr).to be == [' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end
    it 'is assigned to position 3 on the board' do
      board = Board.new
      move.move(board, 2, 'X')
      expect(board.arr).to be == [' ', ' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ']
    end
    it 'is assigned to position 4 on the board' do
      board = Board.new
      move.move(board, 3, 'X')
      expect(board.arr).to be == [' ', ' ', ' ', 'X', ' ', ' ', ' ', ' ', ' ']
    end
    it 'is assigned to position 5 on the board' do
      board = Board.new
      move.move(board, 4, 'X')
      expect(board.arr).to be == [' ', ' ', ' ', ' ', 'X', ' ', ' ', ' ', ' ']
    end
    it 'is assigned to position 6 on the board' do
      board = Board.new
      move.move(board, 5, 'X')
      expect(board.arr).to be == [' ', ' ', ' ', ' ', ' ', 'X', ' ', ' ', ' ']
    end
    it 'is assigned to position 7 on the board' do
      board = Board.new
      move.move(board, 6, 'X')
      expect(board.arr).to be == [' ', ' ', ' ', ' ', ' ', ' ', 'X', ' ', ' ']
    end
    it 'is assigned to position 8 on the board' do
      board = Board.new
      move.move(board, 7, 'X')
      expect(board.arr).to be == [' ', ' ', ' ', ' ', ' ', ' ', ' ', 'X', ' ']
    end
    it 'is assigned to position 9 on the board' do
      board = Board.new
      move.move(board, 8, 'X')
      expect(board.arr).to be == [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'X']
    end
  end
  describe 'Position' do
    it 'is taken' do
      board = Board.new
      move.move(board, move.move_to_index(1), 'X')
      expect(move).to be_position_taken(board, 1)
    end
  end
end
# rubocop:disable Metrics/BlockLength
