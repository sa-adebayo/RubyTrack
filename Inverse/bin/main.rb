require_relative '../lib/inverse'
puts 'Welcome! I want to demonstrate how to override the to_s method in Object class, supply the details below'
print 'Name:             '
user_name = gets.chomp
print 'Gender (M | F):   '
user_gender = gets.chomp
print 'Age:              '
user_age = Integer(gets.chomp)
case user_gender
  when 'm', 'M'
    gender = 'Male'
  else
    gender = 'Female'
end
inverse = Inverse.new(user_name, gender, user_age)
puts inverse.to_s
