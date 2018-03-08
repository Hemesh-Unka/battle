require 'game'

describe Game do
  subject(:game) { described_class.new(fake_p1, fake_p2) }

  subject(:fake_p1) { double('Fake P1') }
  subject(:fake_p2) { double('Fake P2') }

  describe '#player_1' do
    it 'expect p1 is set on initialize' do
      expect(game.players[0]).to eq(fake_p1)
    end
  end

  describe '#player_2' do
    it 'expect p2 is set on initialize' do
      expect(game.players[1]).to eq(fake_p2)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(game.current_player).to receive(:receive_damage)
      game.attack(game.current_player)
    end
  end

  describe '#swap' do
    it 'swaps to the next player' do
      game.swap
      expect(game.current_player).to eq(fake_p2)
    end
  end
end
