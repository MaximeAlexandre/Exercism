class StrandsLengthError < ArgumentError
  def initialize(msg="Strands length must be identical")
    super
  end
end
