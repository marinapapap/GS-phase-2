class GrammarStats
  def initialize
    @count = 0
    @passes = 0
  end

  def check(text) # text is a string
    @count += 1
    if text == nil || text == ""
      fail "Invalid nil value"
    end
    
    first_letter = text[0]
    last_char = text[-1]
  
    first_letter == first_letter.capitalize && last_char.match(/[.?!]/) ? @passes += 1 : false
  end

  def percentage_good
    (@passes / @count.to_f) * 100
  end
end

