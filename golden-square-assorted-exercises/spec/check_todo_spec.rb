require_relative "../lib/check_todo.rb"

describe "check_todo method" do
  it "returns true when sentence contains 'TODO'" do
    expect(check_todo("This contains TODO")).to eq true
  end 
  
  it "returns false if it does not contain 'TODO'" do
    expect(check_todo("This does not contain it!")).to eq false
  end

  it "returns an error when not passed a string" do
    expect { check_todo(1) }.to raise_error "Error: that is not a string"
  end

  it "returns false if given an empty string" do
    expect(check_todo("")).to eq false
  end

  it "returns an error when passed nothing" do
    expect { check_todo(nil) }.to raise_error "Error: that is not a string"
  end
end