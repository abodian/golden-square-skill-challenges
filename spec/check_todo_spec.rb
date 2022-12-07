require_relative "../lib/check_todo.rb"

describe "check_todo method" do
  it "returns true when sentence contains 'TODO'" do
    expect(check_todo("This contains TODO")).to eq true
  end 
  
  it "returns false if it does not contain 'TODO'" do
    expect(check_todo("This does not contain it!")).to eq false
  end
end