class String
  def check_palindrome
    word         = downcase
    reverse_word = reverse.downcase
    if word == reverse_word
      puts "Hurray! The word '#{self}' is really a palindrome"
    else
      puts "Oops! The word '#{self}' is not a palindrome"
    end
  end
end
