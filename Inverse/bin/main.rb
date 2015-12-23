#!/usr/bin/ruby
require '../lib/inverse'
puts 'Welcome! I want to demonstrate how to override the to_s method in Object class, supply the details below'
print 'Name:             '
_user_name = gets.chomp
print 'Gender (M | F):   '
_user_gender = gets.chomp
print 'Age:              '
_user_age = Integer(gets.chomp)
case _user_gender
  when 'm', 'M'
    _gender = 'Male'
  else
    _gender = 'Female'
end
_inverse = Inverse.new(_user_name, _gender, _user_age)
puts _inverse.to_s