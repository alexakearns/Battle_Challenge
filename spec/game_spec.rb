require 'game'

describe Game do

  let(:david) { Player.new('David') }
  let(:adam) { Player.new('Adam') }
  let(:game) { Game.new(david, adam) }

  describe '#initialize' do
    it 'accepts two player objects when new game is initializes' do
      expect(game.player_1.name).to eq 'David'
    end

    it 'player two object has starting score of 100' do
      expect(game.player_2.hit_points).to eq 100
    end
  end

  describe '#attack' do
    it 'reduces opposition points by 10' do
      game.attack(adam)
      expect(adam.hit_points).to eq 90
    end
  end
end
