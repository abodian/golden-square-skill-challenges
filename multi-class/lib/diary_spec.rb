require_relative "../lib/diary"

describe Diary do
  it "constructs the class" do
    diary = Diary.new
    expect(diary.all).to eq []
  end

  it "has a 0 word count" do
    diary = Diary.new
    expect(Diary.count_words).to eq 0
  end
end