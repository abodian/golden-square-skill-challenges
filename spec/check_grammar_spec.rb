require 'check_grammar'

describe 'check_grammar method' do 
  it "returns false when no sentence" do 
    expect(check_grammar("")).to eq false
  end

  it "returns true when capitalized and with full stop" do
    expect(check_grammar("This is a correct sentence.")).to eq true
  end

  it "returns false when there is no capital at the start, but there is a stop" do
    expect(check_grammar("this sentence has no capital at the start.")).to eq false
  end

  it "returns false if there is no full stop, but is capitalized" do
    expect(check_grammar("This sentence has a capital letter")).to eq false
  end

  it "returns false if there is no full stop or capitalized" do
    expect(check_grammar("this sentence has the ultimate poor grammar")).to eq false
  end
end