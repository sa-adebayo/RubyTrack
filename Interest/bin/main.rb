require '../lib/interest'
puts 'I will be calculating both Simple and Compound Interest...'
puts 'Try to input a valid value, I will reset any invalid value to 0.00'
print 'Supply the principal:             '
principal = Float(gets.chomp) rescue 0.00
puts
print 'Supply the interest rate:         '
rate = Float(gets.chomp) rescue 0.00
puts
print 'Supply the interest time:         '
time = Float(gets.chomp) rescue 0.00
puts
bank = Interest.new(principal, rate, time)
print "The simple interest is #{bank.simple_interest} while the compound interest is #{bank.compound_interest}"
puts
begin
  puts
  puts 'Press P to change Principal Value:      '
  puts 'Press R to change Interest Rate Value:  '
  puts 'Press T to change Interest Time Value:  '
  puts 'Press D to display results:             '
  puts 'Press Q to Quit:                        '
  puts
  print 'Waiting for your response:             '
  user_response = gets.chomp
  puts
  case user_response.to_s.downcase
    when 'p'
      print 'What is the new Principal Value?       '
      bank.principal = Float(gets.chomp) rescue 0.00
    when 'r'
      print 'What is the new Interest Rate Value?   '
      bank.rate = Float(gets.chomp) rescue 0.00
    when 't'
      print 'What is the new Interest Time Value?   '
      bank.time = Float(gets.chomp) rescue 0.00
    when 'd'
      print "The simple interest is #{bank.simple_interest} while the compound interest is #{bank.compound_interest}\n"
    when 'q'
      print 'Thanks for using my service...'
    else
      print 'You have entered an invalid response, try again later...'
      puts
  end
end until user_response.to_s.downcase == 'q'
