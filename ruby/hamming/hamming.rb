require_relative 'strands_length_error'

class Hamming

  attr_reader :strand1, :strand2

  def self.compute(strand1, strand2)
    new(strand1, strand2).distance
  end

  def initialize(strand1, strand2)
    raise StrandsLengthError unless valid?(strand1, strand2)

    @strand1 = strand1
    @strand2 = strand2
  end

  def distance
    @distance ||= nucleotides.count { |n1, n2| n1 != n2 }
  end

  private

  def nucleotides
    strand1.chars.zip(strand2.chars)
  end

  def valid?(strand1, strand2)
    strand1.length == strand2.length
  end
end

if $PROGRAM_NAME == __FILE__
  print Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')
  # require 'benchmark/ips'
  # strand1, strand2 = 'AGACGGATTCTG', 'AGGACGGATTCT'
  # Benchmark.ips do |x|
  #   x.report('memoized_distance') { @distance ||=  strand1.chars.zip(strand2.chars).count { |n1, n2| n1 != n2 } }
  #   x.report('memoized_pairing') { @nucleotides ||= strand1.chars.zip(strand2.chars) ; @nucleotides.count { |n1, n2| n1 != n2 } }
  #   x.compare!
  # end
end
