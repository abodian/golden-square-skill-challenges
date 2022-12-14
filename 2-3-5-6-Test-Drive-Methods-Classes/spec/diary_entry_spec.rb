require_relative "../lib/diary_entry.rb"

describe DiaryEntry do
  it "returns the title and the contents of a diary entry" do
    diaryentry = DiaryEntry.new("Monday", "Had a great day")
    expect(diaryentry.title).to eq "Monday"
    expect(diaryentry.contents).to eq "Had a great day"
  end

  it "returns the number of words in the contents as an integer" do
    diaryentry = DiaryEntry.new("Monday", "Had a great day")
    expect(diaryentry.count_words).to eq 4
  end

  it "returns an integer representing an estimate of the reading time in minutes" do
    diaryentry = DiaryEntry.new("Monday", "Had a great day")
    expect(diaryentry.reading_time(4)).to eq 1
  end

  it "returns an integer representing an estimate of the reading time in minutes" do
    diaryentry = DiaryEntry.new("Monday", "Test " * 100)
    expect(diaryentry.reading_time(33)).to eq 3
  end

  it "returns string of text the user can read in a given number of minutes" do
    diaryentry = DiaryEntry.new("Monday", "This is a test sentence with ten different words in")
    expect(diaryentry.reading_chunk(2, 2)).to eq "This is a test" 
    expect(diaryentry.reading_chunk(2, 3)).to eq "sentence with ten different words in"
    expect(diaryentry.reading_chunk(2, 4)).to eq "This is a test sentence with ten different"
  end
end