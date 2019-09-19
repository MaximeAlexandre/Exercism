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


# You will find below, the contents of the file "strands_length_error.rb"

# class StrandsLengthError < StandardError
#   def initialize(msg="Strands length must be identical") 
#     super
#   end
# end
