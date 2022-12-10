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

  it "has a 0 reading time" do
    diary = Diary.new
    expect(Diary.reading_time).to eq 0
  end
end