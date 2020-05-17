require 'player'

describe Player do
  let(:john) { Player.new('John') }

  describe '#name' do
    it 'returns the players name that is entered' do
      expect(john.name).to eq 'John'
    end
  end

  describe '#hit points' do
    it 'default hit points for new player is 100' do
      expect(john.hit_points).to eq 100
    end
  end
end
