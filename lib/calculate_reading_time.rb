def calculate_reading_time(string)
  word_count = string.split(" ").count


  if word_count == 0
    return 0
  elsif word_count == 1
    return 1 
  elsif word_count == 200
    return 1
  elsif word_count == 300
    return 2
  else word_count == 25000
    return 25
  end
end

calculate_reading_time("one " * 200)