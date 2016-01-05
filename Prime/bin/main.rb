require_relative '../lib/integer'
puts 'We want to find prime numbers'
print 'What is the limit?       '
user_input = Integer(gets.chomp) rescue 50
puts
user_input.prime_numbers
