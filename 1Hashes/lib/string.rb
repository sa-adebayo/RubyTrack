class String
  def count_alphabet(ignorecase = true)
    #variable declarations begin
    counter          = Hash.new(0)
    #variable declarations end
    refined_word     = ignorecase ? self.downcase : self
    unique_alphabets = refined_word.scan(/./).uniq
    unique_alphabets.each do |alp|
      nos          = refined_word.count(alp)
      counter[alp] = nos
    end
    counter
  end
end
