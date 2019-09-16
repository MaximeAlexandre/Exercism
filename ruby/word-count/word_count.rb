class Phrase
  attr_reader :sentence, :word_number

  def initialize(sentence)
    @sentence = sentence
    @word_number = Hash.new
  end

  def word_count
    sentence.downcase.scan(/[[:alnum:]]+(?:'[[:alnum:]]+)*/) { |word|
      if word_number.has_key?(word)
        word_number[word] = word_number[word] + 1
      else
        word_number[word] = 1
      end
    }
    word_number
  end
end

=begin
Explication of the regexp
/
[[:alnum:]]+        # match a word or number
(?:'[[:alnum:]]+)   # match an apostrophe followed by a letter, word, digit or number
*                   # repeat the code 0 or more times 
/
=end