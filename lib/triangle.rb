class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sorted = [a, b, c].sort
    if a == b && b == c
      :equilateral
    elsif a == c || b == c
      :isosceles
    end
  end
end
