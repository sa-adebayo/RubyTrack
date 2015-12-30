class String
  attr_reader :word, :reverse_word
  private :word, :reverse_word

  def check_palindrome
    @word         = self.downcase.scan(/./)
    @reverse_word = []
    word_array    = @word.dup
    (1..@word.length).each { | | @reverse_word << word_array.pop }
    if @word == reverse_word
      puts "Hurray! The word '#{@word.join}' is really a palindrome"
    else
      puts "Oops! The word '#{@word.join}' is not a palindrome"
    end
  end
end
