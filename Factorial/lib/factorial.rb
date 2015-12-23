class Factorial
  def calculate(number)
    _result = 1
    (1..number).each do |n|
      _result *= n
    end
    return _result
  end
end
