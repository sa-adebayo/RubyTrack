class Array
  def power(power)
    collect { |a| (a ** power) }
  end
end
