# frozen_string_literal: true

require_relative('../lib/player')
describe Player do
  let(:player) { Player.new('Edem','O') }
  describe 'Player' do
    it 'name is returned' do
      expect(player.name).to eq('Edem')
    end
    it 'sign is returned' do
      expect(player.sign).to eq('O')
    end
  end
end
