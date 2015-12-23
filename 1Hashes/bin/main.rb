#!/usr/bin/ruby
require '../lib/alphabet_counter'
puts 'Welcome! You supply a word and I will count the number of time each character occur'
print 'Kindly supply the word:      '
_user_input = gets.chomp

puts

print 'Do you want me to ignore cases(yes|no)?     '
_user_cases = gets.chomp

puts

_ignore_cases = _user_cases.to_s == 'yes' ? true : false

$alphabet_counter = AlphabetCounter.new
_resultant = $alphabet_counter.count(_user_input, _ignore_cases)
_resultant.each do |key, value|
  puts "#{key} appears  #{value} time(s)"
end
