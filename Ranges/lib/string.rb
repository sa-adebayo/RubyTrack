class String
  def count_characters
    sentence = self
    lowercase = sentence.scan(/[a-z]/)
    uppercase = sentence.scan(/[A-Z]/)
    special_characters = sentence.scan(/[^[:alnum:][:blank:]]/)
    digits = sentence.scan(/[0-9]/)
    "Uppercase:          #{uppercase.length} \nLowercase:          #{lowercase.length} \nDigits:             #{digits.length}\nSpecial Characters: #{special_characters.length}"
  end
end
