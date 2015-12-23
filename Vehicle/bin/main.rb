#!/usr/bin/ruby
require '../lib/bike'
puts 'Welcome! I want to demonstrate what\'s happening in the Bike and Vehicle class'
puts 'To register a Vehicle press 1      '
puts 'To register a Bike press    2      '
print 'What do you want to do?     '
_user_input = Integer(gets.chomp)

puts
case _user_input
  when 1
    puts 'Okay, we are going to register a new Vehicle.'
    puts
    print 'Vehicle name:     '
    _vehicle_name = gets.chomp
    print 'Vehicle price:    '
    _vehicle_price = gets.chomp
    _new_vehicle = Vehicle.new(_vehicle_name, _vehicle_price)
    puts 'You just registered a new Vehicle, the Vehicle detail is as below:'
    puts "Name: #{_new_vehicle.name} \nPrice: #{_new_vehicle.price}"
    puts
    puts 'To change a vehicle price press 1      '
    puts 'To quit press                   2      '
    print 'What do you want to do?         '
    _user_response = Integer(gets.chomp)
    case _user_response
      when 1
        print 'New price:     '
        _new_price = gets.chomp
        _new_vehicle.set_price = _new_price
        puts 'You just updated the new Vehicle price, the Vehicle detail is as below:'
        puts "Name: #{_new_vehicle.name} \nPrice: #{_new_vehicle.price}"
      else
        puts 'I need to quit right away'
    end
  when 2
    puts 'Okay, we are going to register a new Bike.'
    puts
    print 'Bike name:      '
    _bike_name = gets.chomp
    print 'Bike price:     '
    _bike_price = gets.chomp
    print 'Bike dealer:    '
    _bike_dealer = gets.chomp
    _new_bike = Bike.new(_bike_name, _bike_price, _bike_dealer)
    puts 'You just registered a new Bike, the Bike detail is as below:'
    puts "Name: #{_new_bike.name} \nPrice: #{_new_bike.price} \nDealer: #{_new_bike.dealer}"
    puts
    puts 'To change a bike price press   1      '
    puts 'To change a bike dealer press  2      '
    puts 'To quit press                  3      '
    print 'What do you want to do?        '
    _user_response = Integer(gets.chomp)
    case _user_response
      when 1
        print 'New price:     '
        _new_price = gets.chomp
        _new_bike.set_price = _new_price
        puts 'You just updated the new Bike price, the Bike detail is as below:'
        puts "Name: #{_new_bike.name} Price: #{_new_bike.price} Dealer: #{_new_bike.dealer}"
      when 2
        print 'New dealer:     '
        _new_price = gets.chomp
        _new_bike.set_dealer = _new_price
        puts 'You just updated the new Bike dealer, the Bike detail is as below:'
        puts "Name: #{_new_bike.name} Price: #{_new_bike.price} Dealer: #{_new_bike.dealer}"
      else
        puts 'I need to quit right away'
    end
  else
    puts 'I am quiting right now!'
end
puts
