require "pry"

class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a || @side_a <= 0 || @side_b <= 0 || @side_c <= 0
      raise TriangleError
    elsif @side_a == @side_b && @side_b == @side_c
      return :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      return :isosceles
    else
      return :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end
end
