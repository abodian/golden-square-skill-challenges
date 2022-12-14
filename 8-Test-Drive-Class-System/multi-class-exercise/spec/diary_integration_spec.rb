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

describe "reading_time method" do
  it "returns an estimate of time taken for user to read all entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "A good day")
    entry_2 = DiaryEntry.new("Tuesday", "Not so good")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.reading_time(2)).to eq 3
  end
end

describe "find_best_entry_for_reading_time method" do
  it "returns an instance of a diary entry representing the entry that is closest to the length the user could read in minutes available" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Was a good day")
    entry_2 = DiaryEntry.new("Tuesday", "This was not a good day")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.find_best_entry_for_reading_time(2, 3)).to eq "This was not a good day"
  end
end

  describe "find_best_entry_for_reading_time method" do
    it "returns an instance of a diary entry representing the entry that is closest to the length the user could read in minutes available" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Was a very good day because it snowed loads")
      entry_2 = DiaryEntry.new("Tuesday", "This was not a very good day as there was very little snow and we had no food!")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.find_best_entry_for_reading_time(2, 2)).to eq nil
    end  
  end

  describe "find_best_entry_for_reading_time method" do
    it "returns an instance of a diary entry representing the entry that is closest to the length the user could read in minutes available" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Was a very good day because it snowed loads")
      entry_2 = DiaryEntry.new("Tuesday", "This was not a very good day as there was very little snow and we had no food!")
      entry_3 = DiaryEntry.new("Wednesday", "Raining today, and the kitchen needs cleaning. Heating has packed up so all in all it has been a bit of a nightmare to be honest.")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.find_best_entry_for_reading_time(10, 2)).to eq "This was not a very good day as there was very little snow and we had no food!"
    end  
  end