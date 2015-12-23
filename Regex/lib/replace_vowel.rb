#!/usr/bin/ruby
class ReplaceVowel
  def replace(word = '')
    word.empty? || word =~ /^\s*$/ ? 'You did not supply anything' : word.gsub(/a|e|i|o|u|A|E|I|O|U/, '*')
  end
end
