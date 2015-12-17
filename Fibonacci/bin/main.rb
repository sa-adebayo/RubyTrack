#!/usr/bin/ruby
require '../core/fibonacci'
puts 'Welcome! This is fibonacci in action, just tell me the maximum range of the series you want to generate. 1000 is the default'
print 'Kindly supply the maximum range in the series:      '
_user_input = gets.chomp.to_s

puts

_user_input = (_user_input.empty? || _user_input =~ /^\s*$/) ? 1000 : _user_input.to_i
$fibonacci = Fibonacci.new
$fibonacci.generate(_user_input) do |i|
  print i, ' '
end
puts
