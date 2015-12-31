class Array
  def power(power)
    print self.collect { |a| (a ** power) }
  end
end
