class String
  def replace_vowels(char)
    if empty? || self =~ /^\s*$/
      'You did not type anything'
    else
      gsub(/[aeiou]/i, char)
    end
  end
end
