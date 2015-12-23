require '../lib/character_counter'
_character_counter = CharacterCounter.new
print 'Enter the word to analyse:      '
_user_input = gets.chomp
puts _character_counter.count(_user_input)
