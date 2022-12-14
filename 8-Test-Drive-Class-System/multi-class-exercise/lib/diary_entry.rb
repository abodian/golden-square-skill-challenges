# File: lib/diary_entry.rb
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @bookmark = 0
    @contents_array = @contents.split(" ")
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)    
    time = @contents_array.count / wpm.to_f
    return @contents_array.count == 0 ? 0 : time
  end

  def reading_chunk(wpm, minutes) 
    words_can_read = wpm * minutes
    start_from = @bookmark
    end_at = @bookmark + words_can_read
    word_list = @contents_array[start_from...end_at]
    
    if end_at >= @contents_array.count
      @bookmark = 0
    else
      @bookmark = end_at
    end
    return word_list.join(" ")
  end
end

