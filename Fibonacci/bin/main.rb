require_relative '../lib/integer'
puts 'Welcome! This is fibonacci in action, just tell me the maximum range of the series you want to generate. 1000 is the default'
print 'Kindly supply the maximum range in the series:      '
user_input = gets.chomp.to_s
puts
user_input = (user_input.empty? || user_input =~ /^\s*$/) ? 1000 : user_input.to_i
user_input.generate_fibonacci do |i|
  print i, ' '
end
puts
