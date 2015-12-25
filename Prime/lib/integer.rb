class Integer
  def prime_numbers(limit)
    _prime_numbers = []
    self.step(limit, 1) do |i|
      if (i % 2 > 0) && (i > 1)
        _valid = true
        _prime_numbers.each do |e|
          if e <= (i/2) && i % e == 0 && e > 1
            #print e, ' ', Integer((i / 2) + 0.5), ' ', i, "\n"
            #print e <= (i / 2), ' ', i % e == 0, "\n\n"
            _valid = false
          end
        end
        if _valid
          _prime_numbers << i
        end
      end
    end
    return _prime_numbers
  end
end