require 'player'

describe Player do
  subject(:fake_p1) { described_class.new('Fake P1') }
  subject(:fake_p2) { described_class.new('Fake P2') }

  it 'returns player 1 name' do
    expect(fake_p1.name).to eq('Fake P1')
  end

  it 'returns player 2 name' do
    expect(fake_p2.name).to eq('Fake P2')
  end

  it 'checks default hitpoints for p1 is 100' do
    expect(fake_p1.hp).to eq(described_class::DEFAULT_HP)
  end

  it 'checks default hitpoints for p2 is 100' do
    expect(fake_p2.hp).to eq(described_class::DEFAULT_HP)
  end

  describe '#receive_damage' do
    it 'reduces the players default hp by the attack hp' do
      expect { fake_p1.receive_damage }.to change { fake_p1.hp }.by(-10)
    end
  end
end
