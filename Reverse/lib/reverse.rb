class String
  def reverse_word
    _array_of_word = self.split(/[\W+&&[\s]]/)
    _result = []
    begin
      _result << _array_of_word.pop
    end while _array_of_word.length > 0
    _result.join(' ')
  end
end

puts 'I am here again, what is it again'.reverse_word
