require '../lib/factorial'
puts 'Calculating Factorial Using Ranges'
print 'What factorial do you want to calculate?       '
_user_input = Integer(gets.chomp) rescue 4
puts
_factorial = Factorial.new
puts "The Factorial of #{_user_input} is: #{_factorial.calculate(_user_input)}"
