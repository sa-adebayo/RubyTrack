class String
  def reverse_word
    _array_of_word = self.split(/[\W+&&[\s]]/)
    _result = []
    begin
      _result << _array_of_word.pop
    end while _array_of_word.length > 0
    _result.join(' ')
  end

  def reverse_word_inbuilt
    _array_of_word = self.split(/[\W+&&[\s]]/).reverse
    _array_of_word.join(' ')
  end
end
