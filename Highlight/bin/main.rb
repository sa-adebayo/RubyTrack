require_relative '../lib/string'
puts 'We want to search for string and highlight it\'s occurrence while counting the number of times it occurred'
print 'What is the sentence?       '
user_sentences = String(gets.chomp)
puts
print 'Search term?       '
search_term = String(gets.chomp)
puts
print user_sentences.highlight_search(search_term)
