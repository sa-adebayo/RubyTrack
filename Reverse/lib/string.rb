class String
  def reverse_word
    array_of_word = split(/[\W+&&[\s]]/)
    result = []
    begin
      result << array_of_word.pop
    end while array_of_word.length > 0
    result.join(' ')
  end

  def reverse_word_inbuilt
    array_of_word = split(/[\W+&&[\s]]/).reverse
    array_of_word.join(' ')
  end
end
