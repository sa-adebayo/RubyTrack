class Integer
  def calculate_factorial
    #throw Exception.new('Negative number factorial') if number < 0
    raise Exception.new('Negative number factorial') if self < 0
    (1..self).inject { |result, value| result * value }
  end
end
