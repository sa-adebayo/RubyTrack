require_relative '../lib/integer'
puts 'Creating a pascal triangle'
print 'Supply the triangle\'s limit:    '
user_input = Integer(gets.chomp) rescue 0
user_input.process_yield_pascal_triangle { |y| puts y.inspect }
