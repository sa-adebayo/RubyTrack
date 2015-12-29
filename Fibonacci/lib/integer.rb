class Integer
  def generate_fibonacci
    $previous, $current = 1, 1
    while $previous <= self
      yield $previous
      $previous, $current = $current, $previous + $current
    end
  end
end
