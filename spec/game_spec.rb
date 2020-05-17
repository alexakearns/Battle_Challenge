require 'game'

describe Game do

  let(:david) { Player.new('David') }
  let(:adam) { Player.new('Adam') }

  describe '#attack' do
    it 'reduces opposition points by 10' do
      subject.attack(david, adam)
      expect(adam.hit_points).to eq 90
    end
  end
end
