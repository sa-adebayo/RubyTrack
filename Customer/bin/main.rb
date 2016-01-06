require_relative '../lib/customer'
exit = false
begin
  puts 'Welcome to your Personal Bank Inc.'
  puts 'To create an account press             1'
  puts 'To exit the application press     q or Q'
  puts
  print 'Kindly tell me what you want to do:      '
  user_input = gets.chomp.to_s
  puts
  case user_input
  when 'q', 'Q'
    puts 'Thanks you, Seems you are done, I need to shutdown.'
    exit = true
  when '1'
    puts 'I\'ll be asking you a few questions to create your account'
    print 'Name:      '
    user_name = gets.chomp.to_s
    puts
    puts 'I think i should do with your name alone (for now though)'
    puts
    customer = Customer.new(user_name)
    puts 'Account Created!'
    quit = false
    begin
      puts 'We should perform some activities on your account'
      puts 'To deposit press       1'
      puts 'To withdraw press      2'
      puts 'To check balance press 3'
      puts 'To quit press     q or Q'
      quit = false
      puts
      print 'Kindly tell me what you want to do:      '
      user_input = gets.chomp.to_s
      puts
      case user_input
      when 'q', 'Q'
        puts 'Thanks you, Seems you are done, I need to attend to other customers.'
        puts
        quit = true
      when '1'
        print 'Supply the amount to deposit:     '
        amount_to_deposit = Float(gets)
        puts customer.deposit(amount_to_deposit)
      when '2'
        print 'Supply the amount to withdraw:    '
        amount_to_withdraw = Float(gets)
        puts customer.withdraw(amount_to_withdraw)
      when '3'
        puts 'Your account details is as follows'
        puts "Name:             #{customer.name}"
        puts "Account Number:   #{customer.account_number}"
        puts "Account Balance:  #{customer.balance}"
        puts
      else
        puts 'You did not supply a valid code'
        redo
      end
    end until quit
  else
    puts 'You did not supply a valid code'
    redo
  end
end until exit
