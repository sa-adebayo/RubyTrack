require_relative('vehicle')
class Bike < Vehicle
  attr_accessor :dealer

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def details
    puts "Bike name: #{@name} price: #{@price} dealer: #{@dealer}"
  end

  def to_s
    puts "Bike name: #{@name} price: #{@price} dealer: #{@dealer}"
  end
end
