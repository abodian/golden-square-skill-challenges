require_relative "../lib/diary_entry"

describe DiaryEntry do
  it "constructs the class" do
    entry_1 = DiaryEntry.new("Monday", "Was a good day")
    expect(entry_1.title).to eq "Monday"
    expect(entry_1.contents).to eq "Was a good day"
  end
end

describe "count words method" do
  it "returns zero if contents is empty" do
    entry_1 = DiaryEntry.new("Monday", "")
    expect(entry_1.count_words).to eq 0
  end

  it "counts the words in the contents" do
    entry_1 = DiaryEntry.new("Monday", "Was a good day")
    expect(entry_1.count_words).to eq 4
  end
end

describe "reading_time method" do
  it "returns an estimate reading time of a diary entry contents" do
    entry_1 = DiaryEntry.new("Monday", "Had a great day today with my friends")
    expect(entry_1.reading_time(2)).to eq 4
  end

  it "returns an estimate reading time of a diary entry contents" do
    entry_1 = DiaryEntry.new("Monday", "A good day")
    expect(entry_1.reading_time(2)).to eq 1.5
  end

  it "returns an estimate reading time of a diary entry contents" do
    entry_1 = DiaryEntry.new("Monday", "A day")
    expect(entry_1.reading_time(2)).to eq 1
  end
end

describe "reading_chunk method" do
  it "returns a string with a chunk of the contents the user could read given amount of minutes" do
    entry_1 = DiaryEntry.new("Monday", "What a fantastic time I had on this day")
    expect(entry_1.reading_chunk(2, 2)).to eq "What a fantastic time"
  end

  it "returns string of text the user can read in a given number of minutes" do
    diaryentry = DiaryEntry.new("Monday", "This is a test sentence with ten different words in")
    expect(diaryentry.reading_chunk(2, 2)).to eq "This is a test" 
    expect(diaryentry.reading_chunk(2, 3)).to eq "sentence with ten different words in"
    expect(diaryentry.reading_chunk(2, 4)).to eq "This is a test sentence with ten different"
  end
end


