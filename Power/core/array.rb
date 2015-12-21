class Array
  def power(power)
    _array = Array.new
    self.each do |a|
      _array << (a**power)
    end
    print  _array
  end
end