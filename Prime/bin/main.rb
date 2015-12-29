require_relative '../lib/integer'
puts 'We want to find prime numbers'
print 'What is the limit?       '
user_input = Integer(gets.chomp) rescue 50
puts
prime = 1.prime_numbers(user_input)
print 'The prime numbers are: '
prime.each {|i| print i, ' '}
