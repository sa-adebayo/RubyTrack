class Integer
  def prime_numbers(limit)
    prime_numbers = []
    step(limit, 1) do |i|
      if (i % 2 > 0) && (i > 1)
        valid = true
        prime_numbers.each do |e|
          if e <= (i/2) && i % e == 0 && e > 1
            #print e, ' ', Integer((i / 2) + 0.5), ' ', i, "\n"
            #print e <= (i / 2), ' ', i % e == 0, "\n\n"
            valid = false
          end
        end
        if valid
          prime_numbers << i
        end
      end
    end
    prime_numbers
  end
end
