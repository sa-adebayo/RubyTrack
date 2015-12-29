class Array
  def power(power)
    array = Array.new
    self.each do |a|
      array << (a ** power)
    end
    print  array
  end
end
