def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  text_sort = counter.to_a.sort_by { |k, v| v }
  text_sort[-1][0] == " " ? text_sort[-2][0] : text_sort[-1][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

get_most_common_letter("the roof, the roof, the roof is on fire!")