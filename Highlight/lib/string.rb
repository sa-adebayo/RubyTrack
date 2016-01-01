class String
  def highlight_search(word)
    #count = self.scan(/#{word}/i).length
    #replaced_word = self.gsub(/#{word}/i, "(#{word})")
    count = 0
    gsub!(/#{word}/i) do |match|
      count += 1
      "(#{match})"
    end
    count
  end
end
