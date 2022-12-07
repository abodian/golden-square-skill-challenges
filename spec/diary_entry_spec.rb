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
end