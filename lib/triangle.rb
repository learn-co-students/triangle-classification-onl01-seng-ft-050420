class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
#equilateral = all sides
#isosceles = 2 sides equal
#scalene = no sides equal
# (side1 + side2) > side3 and sides > 0
  def kind
    if @side1 <= 0
      raise TriangleError
    elsif @side2 <= 0
      raise TriangleError
    elsif @side3 <= 0
      raise TriangleError
    end

    if (@side1 + @side2) <= @side3 || (@side2 + @side3) <= @side1 || (@side1 + @side3) <= @side2
      raise TriangleError
    elsif (@side1 == @side2)&&(@side2 == @side3)&&(@side3 == @side1)
      return :equilateral
    elsif (@side1 != @side2)&&(@side2 != @side3)&&(@side3 !=  @side1)
      return :scalene
    else
      return :isosceles
    end





  end


  class TriangleError < StandardError
  end

end
