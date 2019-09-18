class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError.new("error, the two DNA strands don't have the same length") unless strand1.length == strand2.length

    strand1.split(//).zip(strand2.split(//)).count { |letter_strand1, letter_strand2|
      letter_strand1 != letter_strand2
    }
  end
end
