def check_todo(sentence)
  fail "Error: that is not a string" if !(sentence.is_a? String)
  sentence.include?("TODO") ? true : false
end