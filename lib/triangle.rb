class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # sorted = [a, b, c].sort
    # if a == b && b == c
    #   :equilateral
    # elsif a == c || b == c || a ==b
    #   :isosceles
    # elsif a + b > c
    #   :scalene
  if [a, b, c].any? {|x| x <= 0}
      raise TriangleError
  end
    sorted = [a, b, c].sort
  if sorted[0] + sorted[1] <= sorted[2]
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
