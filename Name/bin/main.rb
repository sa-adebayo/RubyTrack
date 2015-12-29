require_relative '../lib/name'
begin
  print 'What is your first name:    '
  first_name = gets.chomp
  print 'What is your last name:     '
  last_name = gets.chomp
  name = Name.new(first_name, last_name)
  name.validate
rescue EmptyValueException => e
  puts 'Haaa! ' + e.reason
rescue CaseException => c
  puts 'Ooops! ' + c.reason
else
  puts 'There was not any exception'
ensure
  puts 'I am in the ensure block'
end
