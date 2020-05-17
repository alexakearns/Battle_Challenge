require 'game'

describe Game do

  let(:david) { Player.new('David') }
  let(:adam) { Player.new('Adam') }
  let(:game) { Game.new(david, adam) }

  describe '#initialize' do
    it 'accepts two player objects when new game is initializes' do
      expect(subject.player_1).to eq 'David'
    end
  end

  describe '#attack' do
    it 'reduces opposition points by 10' do
      subject.attack(david, adam)
      expect(adam.hit_points).to eq 90
    end
  end
end
