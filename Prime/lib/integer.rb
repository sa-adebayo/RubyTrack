require 'prime'
class Integer
  def prime_numbers
    (1..self).step(1) { |i| print "#{i} " if i.prime? }
  end
end
