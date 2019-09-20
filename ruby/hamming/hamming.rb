require_relative 'strands_length_error'

class Hamming
  def self.compute(strand1, strand2)
    raise StrandsLengthError unless strand1.length == strand2.length

    strand1.chars.zip(strand2.chars).count { |n1, n2| n1 != n2 }
  end
end

if $PROGRAM_NAME == __FILE__
  Hamming.compute('a', 'ab')
end
