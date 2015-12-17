#!/usr/bin/ruby
class AlphabetCounter
	def count(word = '', ignorecase = true)
    #Variable declarations begin
		_refined_word = ''
		_unique_alphabets = []
    _counter = Hash.new(0)
    #Variable declarations end

    _refined_word = ignorecase ? word.downcase : word
    _unique_alphabets = _refined_word.scan(/./).uniq
    _unique_alphabets.each do |alp|
      _nos = _refined_word.count(alp)
      _counter[alp] = _nos
    end
    return _counter
	end
end
