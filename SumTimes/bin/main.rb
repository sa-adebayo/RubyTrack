require_relative '../lib/time'
puts 'We want to perform addition on different string time values'
times = []
begin
  print 'Supply time (press \'q\' to start calculation):         '
  time = gets.chomp
  if Time.valid?(time)
    times << time
    puts time + ' was entered as a valid string time, please continue...'
  elsif time.match(/q/i)
    puts 'I am going to do the calculation right away...'
  else
    puts 'You just entered an invalid time string, try again...'
  end
end until time.match(/q/i)
puts
print "The sum of the string times supplied is: #{Time.sum(*times)}"
puts
