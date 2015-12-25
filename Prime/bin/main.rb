require '../lib/integer'
puts 'We want to find prime numbers'
print 'What is the limit?       '
_user_input = Integer(gets.chomp) rescue 50
puts
_prime = 1.prime_numbers(_user_input)
print 'The prime numbers are: '
_prime.each {|i| print i, ' '}
