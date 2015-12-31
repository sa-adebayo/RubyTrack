class Array
  def power(power)
    self.collect { |a| (a ** power) }
  end
end
