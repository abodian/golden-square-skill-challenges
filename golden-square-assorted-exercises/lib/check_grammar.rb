def check_grammar(sentence)
  if sentence == ""
    return false
  else
    first_letter_is_uppercase = sentence[0] == sentence[0].upcase
    last_character_is_valid = [".", "!", "?"].include? sentence[-1]
    first_letter_is_uppercase && last_character_is_valid ? true : false
  end
end
  

