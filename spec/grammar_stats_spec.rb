require_relative "../lib/grammar_stats"

describe "GrammarStats class" do
  it "returns true or false depending on whether text begins with a capital letter" do
    check_text = GrammarStats.new
    expect(check_text.check("This is a test.")).to eq true
  end 

  it "returns true or false depending on whether text ends with punctuation mark" do
    check_text = GrammarStats.new
    expect(check_text.check("This is another test.")).to eq true
  end

  it "returns true or false depending on whether text ends with punctuation mark" do
    check_text = GrammarStats.new
    expect(check_text.check("this is another test.")).to eq false
  end

  it "returns true or false depending on whether text ends with punctuation mark" do
    check_text = GrammarStats.new
    expect(check_text.check("This is another test")).to eq false
  end

  it "returns true or false depending on whether text ends with punctuation mark" do
    check_text = GrammarStats.new
    expect(check_text.check("this is another test")).to eq false
  end
end