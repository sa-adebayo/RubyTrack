class Customer
  attr_reader :name, :balance, :account_number
  @@account_number = 0

  def initialize(name)
    @name            = name
    @@account_number += 1
    @account_number  = @@account_number
    @balance         = 1000
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
      puts "#{amount} was deposited successfully"
    else
      puts "The amount you are trying to deposit is invalid: #{amount}"
    end
  end

  def withdraw(amount)
    if amount > 0
      if @balance < amount
        puts 'Sorry, Insufficient fund! Kindly deposit into your account'
      else
        @balance -= amount
        puts "#{amount} was withdrawn successfully"
      end
    else
      puts "The amount you are trying to withdraw is invalid: #{amount}"
    end
  end
end
