class Squares
  attr_reader :square_of_sum, :sum_of_squares

  def initialize(number)
    @square_of_sum = (1..number).sum ** 2
    @sum_of_squares = (1..number).map { |digit| digit ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end