require_relative '../lib/bike'
puts 'Welcome! I want to demonstrate what\'s happening in the Bike and Vehicle class'
puts 'To register a Vehicle press 1      '
puts 'To register a Bike press    2      '
print 'What do you want to do?     '
user_input = Integer(gets.chomp)

puts
case user_input
when 1
  puts 'Okay, we are going to register a new Vehicle.'
  puts
  print 'Vehicle name:     '
  vehicle_name = gets.chomp
  print 'Vehicle price:    '
  vehicle_price = gets.chomp
  new_vehicle   = Vehicle.new(vehicle_name, vehicle_price)
  puts 'You just registered a new Vehicle, the Vehicle detail is as below:'
  puts "Name: #{new_vehicle.name} \nPrice: #{new_vehicle.price}"
  puts
  puts 'To change a vehicle price press 1      '
  puts 'To quit press                   2      '
  print 'What do you want to do?         '
  user_response = Integer(gets.chomp)
  case user_response
  when 1
    print 'New price:     '
    new_price             = gets.chomp
    new_vehicle.set_price = new_price
    puts 'You just updated the new Vehicle price, the Vehicle detail is as below:'
    puts "Name: #{new_vehicle.name} \nPrice: #{new_vehicle.price}"
  else
    puts 'I need to quit right away'
  end
when 2
  puts 'Okay, we are going to register a new Bike.'
  puts
  print 'Bike name:      '
  bike_name = gets.chomp
  print 'Bike price:     '
  bike_price = gets.chomp
  print 'Bike dealer:    '
  bike_dealer = gets.chomp
  new_bike    = Bike.new(bike_name, bike_price, bike_dealer)
  puts 'You just registered a new Bike, the Bike detail is as below:'
  puts "Name: #{new_bike.name} \nPrice: #{new_bike.price} \nDealer: #{new_bike.dealer}"
  puts
  puts 'To change a bike price press   1      '
  puts 'To change a bike dealer press  2      '
  puts 'To quit press                  3      '
  print 'What do you want to do?        '
  user_response = Integer(gets.chomp)
  case user_response
  when 1
    print 'New price:     '
    new_bike.set_price = gets.chomp
    puts 'You just updated the new Bike price, the Bike detail is as below:'
    puts "Name: #{new_bike.name} Price: #{new_bike.price} Dealer: #{new_bike.dealer}"
  when 2
    print 'New dealer:     '
    new_bike.set_dealer = gets.chomp
    puts 'You just updated the new Bike dealer, the Bike detail is as below:'
    puts "Name: #{new_bike.name} Price: #{new_bike.price} Dealer: #{new_bike.dealer}"
  else
    puts 'I need to quit right away'
  end
else
  puts 'I am quiting right now!'
end
puts
