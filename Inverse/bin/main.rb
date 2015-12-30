require_relative '../lib/string'
puts 'Welcome! I want to demonstrate how to override the to_s method in Object class'
print 'Supply word:  '
word = String(gets.chomp)
puts word.to_s
