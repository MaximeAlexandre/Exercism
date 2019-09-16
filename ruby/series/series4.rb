class Series
attr_reader :number

  def initialize(number)
    @number = number
  end

  def slices(n_slices)
    raise ArgumentError.new("Error, you ask for a #{n_slices}-digit series from a #{number.length}-digit string") if n_slices > number.length

    number.chars.each_cons(n_slices).map(&:join)
  end

end