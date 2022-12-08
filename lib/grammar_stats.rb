class GrammarStats
  def initialize
    # ...
  end

  def check(text) 
    if text == ""
      return false
    else
      first_letter_is_uppercase = text[0] == text[0].upcase
      last_character_is_valid = [".", "!", "?"].include? text[-1]
      first_letter_is_uppercase && last_character_is_valid ? true : false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end