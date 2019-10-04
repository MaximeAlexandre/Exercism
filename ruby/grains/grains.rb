require_relative 'square_number_error'

class Grains
  attr_reader :chess_square
  MIN_SQUARE = 1
  MAX_SQUARE = 64

  def self.total
    2 ** MAX_SQUARE - 1
  end

  def self.square(chess_square)
    new(chess_square).wheat_grains
  end

  def initialize(chess_square)
    raise SquareNumberError unless valid_square?(chess_square)

    @chess_square = chess_square
  end

  def wheat_grains
    @wheat_grains ||= 2 ** (chess_square - 1)
  end

  private

  def valid_square?(chess_square)
    chess_square >= MIN_SQUARE && chess_square <= MAX_SQUARE
  end
end
