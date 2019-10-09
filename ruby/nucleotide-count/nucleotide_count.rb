require_relative 'strand_nucleotides_error'

class Nucleotide
  attr_reader :strand, :nucleotides

  def self.from_dna(strand)
    new(strand)
  end

  def initialize(strand)
    raise StrandNucleotidesError if invalid?(strand)

    @strand = strand
    @nucleotides = {
      'A' => 0,
      'T' => 0,
      'C' => 0,
      'G' => 0
    }
  end

  def count(nucleotide)
    strand.each_char.count(nucleotide)
  end

  def histogram
    nucleotides.each_key { |key| nucleotides[key] = count(key) }
  end

  private

  def invalid?(strand)
    strand.match(/[^ATCG]/)
  end
end
