#!/usr/bin/ruby
class AlphabetCounter
	def count(word = '', ignorecase = true)
		_refined_word = ''
		_unique_alphabets = []
    _counter = Hash.new(0)
    _refined_word = ignorecase ? word.downcase : word
    _unique_alphabets = _refined_word.scan(/./).uniq
    _unique_alphabets.each do |alp|
      _nos = _refined_word.count(alp)
      _counter[alp] = _nos
    end
    return _counter
	end
end
