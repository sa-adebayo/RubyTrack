#!/usr/bin/ruby
require '../core/palindrome'
puts 'Welcome! This is palindrome in action, you need to supply a word and i\'ll check it right away'
print 'Kindly supply the word:      '
_user_input = gets.chomp.to_s

puts

$palindrome = Palindrome.new(_user_input)
puts $palindrome.check
puts
