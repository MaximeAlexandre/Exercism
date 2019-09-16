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