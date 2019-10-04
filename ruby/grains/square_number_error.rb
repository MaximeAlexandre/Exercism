class SquareNumberError < ArgumentError
  def initialize(msg="Wrong square number, it must be between 1 and 64.")
    super
  end
end
