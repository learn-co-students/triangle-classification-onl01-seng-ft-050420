class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (side1 <= 0 || side2 <= 0 || side3 <= 0|| (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side1 + side3) <= side2)
      raise TriangleError
    end
    if (side1 == side2 && side2 == side3)
      return :equilateral
    elsif (side1 == side2 || side2 == side3 || side3 == side1)
      return :isosceles
    else
      return :scalene
    end
  end
  
  class TriangleError < StandardError
  
  end
  
#side > 0 all of these 
#equilateral = side1 = side2 = side3 
#isosceles = side1 = side 2 | side 2 = side 3 | side 3 = side1
#scalene
  #side1 + side 2 > side3
  #side 2 + side 3 > side1
  #side 1 + side 3 > side 2
end

