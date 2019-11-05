# frozen_string_literal: true

require_relative('../lib/game')
require_relative('../lib/player')
describe Game do
  let(:game){ Game.new }

  describe 'game' do
    it 'returns the next player to take turn' do
      player1 = Player.new('Edem', 'X')
      player2 = Player.new('Sam', 'O')
      current_player = player1
      expect(game.flip_players(current_player, player1, player2)).to eq(player2)
    end
  end
end
