class String
  def replace_vowels(char)
    self.empty? || self =~ /^\s*$/ ? 'You did not type anything' : self.gsub(/a|e|i|o|u|A|E|I|O|U/, char)
  end
end
