$account_number = 0
class Customer
  attr_reader :name, :balance, :account_number

  def initialize(name)
    @name = name
    @account_number = $account_number = $account_number + 1
    @balance = 1000
  end

  def deposit(amount)
    @balance += amount
    puts "#{amount} was deposited successfully"
  end

  def withdraw(amount)
    if @balance < amount
      puts 'Sorry, Insufficient fund! Kindly deposit into your account'
    else
      @balance -= amount
      puts "#{amount} was withdrawn successfully"
    end
  end
end