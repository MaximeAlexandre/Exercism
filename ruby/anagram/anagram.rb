class Anagram

  attr_reader :given_word

  def initialize(given_word)
    @given_word = given_word
  end

  def match(possible_anagrams_list)
    anagrams_list = []

    possible_anagrams_list.each do |word|
      next if given_word.downcase == word.downcase
      anagrams_list << word if word.downcase.chars.sort.join == given_word.downcase.chars.sort.join
    end

    anagrams_list
  end
end
