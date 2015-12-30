require_relative '../lib/string'
puts 'Welcome! This is palindrome in action, you need to supply a word and i\'ll check it right away. Supply q or Q to quit'
quit = false
begin
  print 'Kindly supply the word:      '
  user_input = gets.chomp.to_s
  puts
  case user_input
  when 'q', 'Q'
    puts 'Thanks for using this palindrome application'
    quit = true
  when user_input.length < 1
    puts 'You did not supply a valid word. I need a word that is more than two characters'
  else
    puts user_input.check_palindrome
  end
end until quit
puts
