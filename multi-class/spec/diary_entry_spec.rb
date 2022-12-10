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


