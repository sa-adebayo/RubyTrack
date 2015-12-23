#!/usr/bin/ruby
require '../lib/palindrome'
puts 'Welcome! This is palindrome in action, you need to supply a word and i\'ll check it right away. Supply q or Q to quit'
quit = false
begin
  print 'Kindly supply the word:      '
  _user_input = gets.chomp.to_s
  puts
  case _user_input
    when 'q', 'Q'
      puts 'Thanks for using this palindrome application'
      quit = true
    when _user_input.length < 3
      puts 'You did not supply a valid word. I need a word that is more than two characters'
    else
      $palindrome = Palindrome.new(_user_input)
      puts $palindrome.check
  end
end until quit
puts
