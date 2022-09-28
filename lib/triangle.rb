class Triangle

  attr_accessor :a, :b, :c
  attr_reader :equilateral, :isosceles, :scalene
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  def validate
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end

end

equilateral = Triangle.new(4, 4, 4)
equilateral.kind
