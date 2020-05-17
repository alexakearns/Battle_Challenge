require 'player'

describe Player do

  let(:john) { Player.new("John") }

  it 'returns the players name that is entered' do
    expect(subject.name).to eq "John"
  end

end
