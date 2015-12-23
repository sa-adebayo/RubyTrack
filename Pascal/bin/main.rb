require '../lib/pascal_triangle'
puts 'Creating a pascal triangle'
puts
print 'Supply the triangle\'s limit:    '
_user_input = Integer(gets.chomp) rescue 0
PascalTriangle.new.process_yield(_user_input) {|y| puts y.inspect}