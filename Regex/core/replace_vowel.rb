#!/usr/bin/ruby
class ReplaceVowel
  def replace(word = '')
    word.gsub(/a|e|i|o|u/, '*')
  end
end