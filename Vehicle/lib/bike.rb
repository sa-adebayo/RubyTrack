require_relative('vehicle')
class Bike < Vehicle
  attr_reader :dealer

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def set_dealer=(new_dealer)
    @dealer = new_dealer
  end

  def details
    puts "Bike name: #{@name} price: #{@price} dealer: #{@dealer}"
  end

  def to_s
    puts "Bike name: #{@name} price: #{@price} dealer: #{@dealer}"
  end
end
