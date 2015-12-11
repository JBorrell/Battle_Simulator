require 'game'

describe Game do
  let(:johnny) { double :johnny }
  let(:timmy) { double :timmy }
  subject(:game) { described_class.new(johnny, timmy)}

  describe '#attack' do
    it 'allows players to attack' do
      expect(timmy).to receive(:deduct_hp)
      game.attack(timmy)
    end
  end

  describe '#player_1' do
    it 'returns player 1\'s name' do
      expect(game.player_1).to eq johnny
    end
  end

  describe '#player_2' do
    it 'returns player 1\'s name' do
      expect(game.player_2).to eq timmy
    end
  end

  describe '#turn' do
    it 'starts with player 1' do
      expect(game.turn).to eq timmy
    end
  end

  describe '#opponent' do
    it 'returns the player whose turn it is not' do
      expect(game.opponent).to eq johnny
    end
  end

  describe '#switch_turn' do
    it 'switches turn after an attack' do
      game.switch_turn
      expect(game.turn).to eq johnny
    end
  end
end
