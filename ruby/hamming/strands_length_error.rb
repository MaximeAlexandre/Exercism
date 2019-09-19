class StrandsLengthError < StandardError
  def initialize(msg="Strands length must be identical") 
    super
  end
end
