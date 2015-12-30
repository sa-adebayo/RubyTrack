require_relative '../lib/string'
puts 'Welcome! You supply a word and I will count the number of time each character occur'
print 'Kindly supply the word:      '
user_input = gets.chomp.to_s
puts
print 'Do you want me to ignore cases(yes|no)?     '
user_cases = gets.chomp
puts
ignore_cases = user_cases.to_s == 'yes' ? true : false
resultant    = user_input.count_alphabet(ignore_cases)
resultant.each do |key, value|
  puts "#{key} appears  #{value} time(s)"
end
