require '../lib/time'
puts 'We want to perform addition on different string time values'
times = []
begin
  print 'Supply time (press \'q\' to start calculation):         '
  time = gets.chomp
  if Time.validate(time)
    times << time.to_s
    puts time + ' was entered as a valid string time, please continue...'
  else
    puts 'You just entered an invalid time string, try again...'
  end
end until time.to_s.downcase == 'q'
puts
print "The sum of the string times supplied is: #{Time.sum(*times)}"
puts
