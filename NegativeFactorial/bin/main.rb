require_relative '../lib/integer'
puts 'Calculating Factorial Using Ranges'
print 'What factorial do you want to calculate?       '
user_input = Integer(gets.chomp) rescue 4
puts
begin
  puts "The Factorial of #{user_input} is: #{user_input.calculate_factorial}"
rescue Exception => e
  puts 'An error occurred in the program, It seems messy but I just handled it.  :  ' + e.message
end
