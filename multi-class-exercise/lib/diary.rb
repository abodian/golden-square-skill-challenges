# File: lib/diary.rb
require_relative "../lib/diary_entry.rb"

class Diary
  def initialize
    @diary = []
    @entry_hash = {}
  end

  def add(entry) 
    @diary.push(entry)
  end

  def all
    return @diary
  end

  def count_words
    return @diary.sum(&:count_words)
    # return @diary.map do |entry|
    #   entry.count_words
    # end.sum
  end

  def reading_time(wpm)
    return @diary.map do |entry|
      entry.reading_time(wpm)
    end.sum
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    words_can_read = wpm * minutes

    @diary.map do |entry|
      @entry_hash[entry.count_words] = entry.contents
    end
    sorted_hash = @entry_hash.sort_by { | count, chunk | count }.reverse!
    sorted_hash.find do | count, chunk |
      if count <= words_can_read
        return chunk
      end
    end
  end
end



# Create a hash, iterate over each entry with reading_chunk, count each entry 
