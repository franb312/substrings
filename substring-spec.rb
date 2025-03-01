require_relative 'substrings'

describe '#substring' do
  let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

  it 'returns correct substring counts for single word' do
    expect(substring("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it 'returns correct substring counts for multiple words' do
    expect(substring("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
  end
end