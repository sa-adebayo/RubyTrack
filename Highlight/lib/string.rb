class String
  def highlight_search(word)
    count = 0
    gsub!(/#{word}/i) do |match|
      count += 1
      "(#{match})"
    end
    count
  end
end
