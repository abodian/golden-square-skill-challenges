class GrammarStats
  def initialize
    @count_text_checked = 0
    @count_text_failed = 0
    @count_text_passed = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    if text == ""
      @count_text_failed += 1
      return false
    else
      first_letter_is_uppercase = text[0] == text[0].upcase
      last_character_is_valid = [".", "!", "?"].include? text[-1]
      if first_letter_is_uppercase && last_character_is_valid
        @count_text_passed += 1
        return true
      else
        @count_text_failed += 1
        return false
      end
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.

    @count_text_checked = @count_text_failed + @count_text_passed
    percentage = (@count_text_passed / @count_text_checked.to_f) * 100
    return percentage
  end
end
