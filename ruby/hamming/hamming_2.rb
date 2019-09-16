class Hamming
  def self.compute(first_dna, second_dna)
    raise ArgumentError.new("error, the two DNA don't have the same length") if first_dna.length != second_dna.length

    number_of_difference = 0
    first_dna.each_char.with_index { |letter, index|
      number_of_difference += 1 if letter != second_dna[index]
    }
    number_of_difference
  end
end