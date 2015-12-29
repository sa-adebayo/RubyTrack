class Integer
  def calculate_factorial
    _result = 1
    (1..self).each do |n|
      _result *= n
    end
    _result
  end
end
