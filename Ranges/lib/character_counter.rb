class CharacterCounter
  def count(sentence)
    sentence = sentence.to_s
    _lowercase = sentence.scan(/[a-z]/)
    _uppercase = sentence.scan(/[A-Z]/)
    _special_characters = sentence.scan(/[^[:alnum:][:blank:]]/)
    _digits = sentence.scan(/[0-9]/)
    return "Uppercase:          #{_uppercase.length} \nLowercase:          #{_lowercase.length} \nDigits:             #{_digits.length}\nSpecial Characters: #{_special_characters.length}"
  end
end
