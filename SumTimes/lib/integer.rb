class Integer
  def pluralize(suffix)
    (self == 1) ? "1 #{suffix}" : "#{self} #{suffix}s"
  end
end