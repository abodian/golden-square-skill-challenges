require_relative "../lib/music_list"

describe "music list class" do
  it "adds a track to a music list and returns the list" do
    musiclist = MusicList.new
    musiclist.add("Highway to Hell")
    expect(musiclist.list).to eq "Highway to Hell"
  end

  it "calls add method twice, adding two tracks and then printing the list in the correct format" do
    musiclist = MusicList.new
    musiclist.add("Highway to Hell")
    musiclist.add("Ace of Spades")
    expect(musiclist.list).to eq "Highway to Hell - Ace of Spades"
  end

  it "calls add method twice, tries to add a dupulicate then prints list" do
    musiclist = MusicList.new
    musiclist.add("Highway to Hell")
    musiclist.add("Ace of Spades")
    musiclist.add("Ace of Spades") # try to add duplicate
    expect(musiclist.list).to eq "Highway to Hell - Ace of Spades"
  end

  it "" do
    musiclist = MusicList.new
    expect { musiclist.list }.to raise_error "Error: Your music list is empty"
  end
end