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
end