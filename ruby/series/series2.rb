class Series
attr_reader :number

  def initialize(number)
    @number = number
  end

  def slices(n_slices)

    if n_slices > number.length
      raise ArgumentError.new("Error, you ask for a #{n_slices}-digit series from a #{number.length}-digit string")
    else
      number.split(//).each_cons(n_slices).to_a.map(&:join)
    end

  end

end