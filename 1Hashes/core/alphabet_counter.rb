#!/usr/bin/ruby
class AlphabetCounter

	def count_alphabet(word = '', ignorecase = true)
		$refined_word = ''
		$unique_alphabets = []
    $counter = Hash.new(0)
    $refined_word = ignorecase ? word.downcase : word
    $unique_alphabets = $refined_word.scan(/./).uniq
    $unique_alphabets.each do |alp|
      _nos = $refined_word.count(alp)
      $counter[alp] = _nos
    end
    return $counter
	end
end
