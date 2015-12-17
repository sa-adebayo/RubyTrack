#!/usr/bin/ruby
class Fibonacci
  def generate (size = 1000)
    $previous, $current = 1, 1
    while $previous <= size
      yield $previous
      $previous, $current = $current, $previous + $current
    end
  end
end
