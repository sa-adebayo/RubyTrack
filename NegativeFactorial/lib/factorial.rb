class Factorial
  def calculate(number)
    begin
      #throw Exception.new('Negative number factorial') if number < 0
      raise IndexError if number < 0
      _result = 1
      (1..number).each do |n|
        _result *= n
      end
    rescue Exception
      puts 'An exception has occurred, it was thrown by a negative number'
    else
      return _result
    end
  end
end
