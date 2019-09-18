class StrandLengthError < StandardError
  def initialize(msg="Stand lengths must be identical") 
    super
  end
end