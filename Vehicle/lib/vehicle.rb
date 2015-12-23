#!/usr/bin/ruby
class Vehicle
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def set_price=(new_price)
    @price = new_price
  end

  def details
    puts "Vehicle name: #{@name} Vehicle price: #{@price}"
  end
end
