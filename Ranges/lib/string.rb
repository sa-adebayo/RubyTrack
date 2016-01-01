class String
  def count_characters
    sentence = self
    lowercase = 0
    uppercase = 0
    digits = 0
    special_characters = 0

    upper_alphabets_range = Range.new('A', 'Z')
    lower_alphabets_range = Range.new('a', 'z')
    digits_range = Range.new('0', '9')
    sentence.each_char do |char|
      case char
      when upper_alphabets_range
        uppercase += 1
      when lower_alphabets_range
        lowercase += 1
      when digits_range
        digits += 1
      else
        special_characters += 1 unless char.to_s.match /^\s*$/
      end
    end
    "Uppercase:          #{uppercase} \nLowercase:          #{lowercase} \nDigits:             #{digits}\nSpecial Characters: #{special_characters}"
  end
end
