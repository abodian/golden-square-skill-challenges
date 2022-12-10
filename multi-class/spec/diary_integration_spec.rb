require_relative "../lib/diary"
require_relative "../lib/diary_entry"

describe "Diary Integration" do
  it "adds diary entries and returns a list" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "A good day")
    entry_2 = DiaryEntry.new("Tuesday", "Not so good")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.all).to eq [entry_1, entry_2]
  end
end

describe "count_words method" do
  it "counts the words in all diary entries' contents" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "A good day")
    entry_2 = DiaryEntry.new("Tuesday", "Not so good")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.count_words).to eq 6
  end
end

