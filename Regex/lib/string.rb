class String
  def replace_vowels(char)
    if self.empty? || self =~ /^\s*$/
      'You did not type anything'
    else
      self.gsub(/[aeiou]/i, char)
    end
  end
end
