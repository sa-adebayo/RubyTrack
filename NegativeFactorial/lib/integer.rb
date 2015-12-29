class Integer
  def calculate_factorial
    begin
      #throw Exception.new('Negative number factorial') if number < 0
      raise IndexError if self < 0
      result = 1
      (1..self).each do |n|
        result *= n
      end
    rescue Exception
      puts 'An exception has occurred, it was thrown by a negative number'
      raise Exception.new('Negative number factorial')
    else
      return result
    end
  end
end
