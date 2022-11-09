def grammar_checker(text)
  first_letter = text[0]
  last_char = text[-1]

  if first_letter == first_letter.capitalize && last_char.include?(".?")
    true
  else
    false
  end

end