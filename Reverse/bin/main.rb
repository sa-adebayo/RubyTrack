require '../lib/reverse'
puts 'Reverse sentences like never before... Uhunh...'
print 'What is the sentence I am reversing?       '
_user_input = String(gets.chomp)
puts
_reverse = _user_input.reverse_word
puts "The reverse of the sentence supplied is: #{_reverse}"
