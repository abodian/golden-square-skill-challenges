class MusicList
  def initialize
    @music_list = []
  end

  def add(track)
    unless @music_list.include?(track)
      @music_list.push(track)
    end
  end

  def list
    @music_list.empty? ? fail("Error: Your music list is empty") : @music_list.join(" - ")
  end
end  