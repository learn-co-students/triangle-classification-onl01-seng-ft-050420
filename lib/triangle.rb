class Triangle
  attr_accessor :side_a, :side_b, :side_c, :sides
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @sides = [@side_a, @side_b, @side_c].sort
  end
  
  def illegal_triangle?
    @sides.any? {|side| side <= 0} || @sides[0] + @sides[1] <= @sides[2]
  end 
  
  def kind
    if illegal_triangle?
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  

  class TriangleError < StandardError
  end
  
end
