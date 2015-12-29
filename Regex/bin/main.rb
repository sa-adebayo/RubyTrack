require_relative '../lib/string'
puts 'Welcome! You supply a word and I will replace all occurrences of vowel characters to \'*\'. isn\'t it cool?'
print 'Kindly supply the word:      '
_user_input = gets.chomp
puts
puts _user_input.replace_vowels('*')
