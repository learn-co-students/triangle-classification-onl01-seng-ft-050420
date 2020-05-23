class Triangle
attr_accessor :side1, :side2, :side3
@allsides = []

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @allsides = [side1, side2, side3]
  end

  def kind
    if (less_than_or_equal_to_zero == true || valid? == false)
    raise TriangleError
    elsif(equilateral?)
    :equilateral
    elsif(scalene?)
      :scalene
    else(isosceles?)
      :isosceles
    end

  end

  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end

  def scalene?
    (@side1 != @side2) && (@side1!= @side3) && (@side2 != @side3)
  end

  def isosceles?
    (@side2 == @side3) || (@side1 == @side2) || (@side1 = @side3)
  end

  def less_than_or_equal_to_zero
    (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
  end

  def valid?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
  end

  class TriangleError < StandardError

  end

end

#begin
  #raise YourCustomError
#rescue YourCustomError
#end
