def get_most_common_letter(text)
  counter = Hash.new(0)
  text_no_spaces = text.gsub(/\s+/, "") # removes white space
  text_no_spaces.chars.each do |char|
    counter[char] += 1
    # p counter[char]
  end
  # p counter
  # p counter.to_a
  # p counter.to_a.sort_by { |k, v| v }
  p counter.to_a.sort_by { |k, v| v }[-1][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

puts get_most_common_letter("the roof, the roof, the roof is on fire!")
