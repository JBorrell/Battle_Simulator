require 'attack'

describe Attack do
  subject(:attack) { described_class.new(player_1) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe '#basic_attack' do
    it 'allows players to attack' do
      expect(player_1).to respond_to(:deduct_hp).with(1).argument
      attack.basic_attack(player_1)
    end
  end

end
