#!/usr/bin/ruby
require '../lib/replace_vowel'
puts 'Welcome! You supply a word and I will replace all occurrences of vowel characters to \'*\'. isn\'t it cool?'
print 'Kindly supply the word:      '
_user_input = gets.chomp

puts

$vowel_replacer = ReplaceVowel.new
puts $vowel_replacer.replace(_user_input)
