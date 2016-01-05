class Integer
  def calculate_factorial
    (1..self).inject {|result, value| result * value }
  end
end
