#!/usr/bin/ruby
require '../core/palindrome'
puts 'Welcome! This is palindrome in action, you need to supply a word and i\'ll check it right away. Supply q or Q to quit'
quit = true
while quit do
  print 'Kindly supply the word:      '
  _user_input = gets.chomp.to_s
  puts
  if _user_input.downcase == 'q'
    puts 'Thanks for using this palindrome application'
    quit = false
  elsif _user_input.length < 3
    puts 'You did not supply a valid word. I need a word that is more than two characters'
  else
    $palindrome = Palindrome.new(_user_input)
    puts $palindrome.check
  end
end
puts
