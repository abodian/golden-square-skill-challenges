def calculate_reading_time(string)
  word_count = string.split(" ").count

  time = word_count / 200.to_f

  if word_count == 0
    return 0
  elsif word_count == 1
    return 1
  elsif word_count % 200 == 0
    return word_count / 200
  else 
    return time.ceil
  end
end

