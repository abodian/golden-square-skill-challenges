require_relative "../lib/diary"

describe Diary do
  it "constructs the class" do
    diary = Diary.new
    expect(diary.all).to eq []
  end

  it "has a 0 word count" do
    diary = Diary.new
    expect(diary.count_words).to eq 0
  end

  it "has a 0 reading time" do
    diary = Diary.new
    expect(diary.reading_time).to eq 0
  end

  it "has a best readable entry of nil" do
    diary = Diary.new
    expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
end