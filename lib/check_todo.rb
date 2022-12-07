def check_todo(sentence)
  if sentence.include?("TODO")
    return true
  else
    return false
  end
end