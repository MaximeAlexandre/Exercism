class StrandNucleotidesError < ArgumentError
  def initialize(msg="Wrong nucleotide(s) in the strand. It must be A, T, C or G")
    super
  end
end
