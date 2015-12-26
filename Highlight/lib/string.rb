class String
  def highlight_search(word)
    #count = self.scan(/#{word}/i).length
    #replaced_word = self.gsub(/#{word}/i, "(#{word})")
    count = 0
    replaced_word = self.gsub(/#{word}/i) { |match|
      count += 1
      '(' + match + ')'
    }
    replaced_word + " Total Occurrence found: #{count}"
  end
end
