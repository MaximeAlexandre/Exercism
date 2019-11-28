class Phrase
  REGEX = /\b[\w']+\b/

  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    input_preparation.each_with_object(Hash.new(0)) do |word, word_number|
      word_number[word] += 1
    end
  end

  private

  def input_preparation
    sentence.downcase.scan(REGEX)
  end
end

=begin
Explanation of the regexp
/       
\b      word boundaries
[\w']+  any word with, or without, an apostrophe followed by a letter or word
\b      word boundaries
/       
=end