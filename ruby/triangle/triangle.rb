class Triangle
attr_reader :triangle_sides

  def initialize(triangle_sides)
    @triangle_sides = triangle_sides
  end

  def triangle_inequality
    #test if any 2 sides are greater than or equal to the third side
    return false if triangle_sides.min(2).sum < triangle_sides.max

    #test if all sides are greater than 0
    !triangle_sides.include?(0)
  end

  def equilateral?
    triangle_sides.count(triangle_sides[0]) == 3 && triangle_inequality
  end

  def isosceles?
    (triangle_sides.count(triangle_sides[0]) >= 2 \
    || triangle_sides.count(triangle_sides[1]) >= 2) \
    && triangle_inequality
  end

  def scalene?
    triangle_sides.count(triangle_sides[0]) == 1 \
    && triangle_sides.count(triangle_sides[1]) == 1 \
    && triangle_inequality
  end

  def degenerate?
    triangle_sides.min(2).sum == triangle_sides.max && triangle_inequality 
  end
end


# Please find below the test used for the degenerated triangle

=begin
require 'minitest/autorun'
require_relative 'triangle'

# Common test data version: 1.2.0 55f89ca
class TriangleTest < Minitest::Test
  def test_triangle_is_degenerate
    # skip
    triangle = Triangle.new([1, 2, 3])
    assert triangle.degenerate?, "Expected 'true', triangle [1, 1, 2] is degenerate."
  end

  def test_triangle_is_degenerate_2
    # skip
    triangle = Triangle.new([0.3, 0.3, 0.6])
    assert triangle.degenerate?, "Expected 'true', triangle [0.3, 0.3, 0.6] is degenerate."
  end

  def test_triangle_is_degenerate_3
    # skip
    triangle = Triangle.new([14, 14, 28])
    assert triangle.degenerate?, "Expected 'true', triangle [0.3, 0.3, 0.6] is degenerate."
  end

  def test_triangle_is_not_degenerate
    # skip
    triangle = Triangle.new([1, 3, 3])
    refute triangle.degenerate?, "Expected 'false', triangle [1, 3, 3] is not degenerate."
  end

  def test_triangle_is_not_degenerate_2
    # skip
    triangle = Triangle.new([4, 4, 4])
    refute triangle.degenerate?, "Expected 'false', triangle [4, 4, 4] is not degenerate."
  end

  def test_triangle_is_not_degenerate_3
    # skip
    triangle = Triangle.new([1, 3, 5])
    refute triangle.degenerate?, "Expected 'false', triangle [1, 2, 3] is not degenerate."
  end
end
=end