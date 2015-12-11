require 'player'

describe Player do
  subject(:johnny) { described_class.new('Johnny Cash') }
  subject(:timmy) { described_class.new('Timmy Jones') }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(timmy.name).to eq 'Timmy Jones'
    end
  end

  describe '#hp' do
    it 'starts with 60 hp' do
      expect(timmy.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#deduct_hp' do
    it 'deducts 10 hp after an attack' do
      expect { timmy.deduct_hp(5) }.to change { timmy.hp }.by(-5)
    end
  end
end
