class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c) 
    @a = a
    @b = b
    @c = c
  end
  
  def valid?
    if (@a < 0 || @b < 0 || @c < 0) 
      return false 
    elsif (@a + @b <= @c || @a + @c <= @b || @b + @c <= @a )
      return false 
    else 
      return true
    end
  end
  
  def kind 
    sides = [@a, @b, @c].sort
    if !valid?
      raise TriangleError
    elsif sides[0] == sides[1] && sides[1] == sides[2]
      return :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2] 
      return :isosceles
    else 
      return :scalene
    end
    
  end
  
  class TriangleError < StandardError
    def message 
      "that is not a valid triangle"
    end
  end
  
  
end
