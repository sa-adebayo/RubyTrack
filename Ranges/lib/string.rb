class String
  def count_characters
    character_count = Hash.new { |hash, key| hash[key] = 0 }
    upper_alphabets_range = 'A'..'Z'
    lower_alphabets_range = 'a'..'z'
    digits_range = '0'..'9'
    self.each_char do |char|
      case char
      when upper_alphabets_range
        character_count[:uppercase] += 1
      when lower_alphabets_range
        character_count[:lowercase] += 1
      when digits_range
        character_count[:digits] += 1
      else
        character_count[:special_characters] += 1 unless char.to_s.match /^\s*$/
      end
    end
    character_count
  end
end
