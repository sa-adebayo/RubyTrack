#!/usr/bin/ruby
require '../core/alphabet_counter'
puts 'Welcome! You supply a word and I will count the number of time each character occur'
print 'Kindly supply the word:      '
$user_input = gets.chomp

puts

print 'Do you want me to ignore cases(yes|no)?     '
$user_cases = gets.chomp

puts

$ignore_cases = $user_cases.to_s == 'yes' ? true : false

$alphabet_counter = AlphabetCounter.new
$resultant = $alphabet_counter.count_alphabet($user_input, $ignore_cases)
$resultant.each do |key, value|
  puts "#{key} appears  #{value} time(s)"
end
