class Phrase
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    sentence.downcase.scan(/\b[\w']+\b/).each_with_object(Hash.new(0)) do |word, word_number|
      word_number[word] += 1
    end
  end
end

=begin
Explanation of the regexp
/       
\b      word boundaries
[\w']+  any word with or without ' and a letter
\b      word boundaries
/       
=end