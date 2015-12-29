require_relative '../lib/time'
puts 'We want to perform addition on different string time values'
begin
  print 'Supply the first time:         '
  first_time = gets.chomp
end until Time.validate(first_time)
puts
begin
  print 'Supply the second time:        '
  second_time = gets.chomp
end until Time.validate(second_time)
puts
print "The sum of the string times supplied is: #{Time.sum(first_time, second_time)}"
puts
