class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError.new("error, the two DNA strands don't have the same length") if strand1.length != strand2.length

    strand1.each_char.with_index.count { |letter, index|
      letter != strand2[index]
    }
  end
end
