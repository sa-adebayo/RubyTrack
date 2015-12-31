class String
  def count_alphabet(ignorecase = true)
    #variable declarations begin
    counter          = Hash.new(0)
    #variable declarations end
    refined_word     = ignorecase ? downcase : self
    unique_alphabets = refined_word.scan(/[A-Z]/i).uniq
    unique_alphabets.each do |alp|
      counter[alp] = refined_word.count(alp)
    end
    counter
  end
end
