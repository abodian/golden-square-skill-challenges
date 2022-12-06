require 'check_grammar'

describe ' check_grammar method' do 
  it "returns false when no sentence" do 
    expect(check_grammar("")).to eq false
  end
end