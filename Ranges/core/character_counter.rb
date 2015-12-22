class CharacterCounter
  def count(sentence)
    sentence = sentence.to_s
    _lowercase = sentence.scan(/a-z/)
    _uppercase = sentence.scan(/A-Z/)
    _special_characters = 0
    _digits = sentence.scan(/0-9/)

    sentence.each_char do |c|
      #sentence
    end
  end
end