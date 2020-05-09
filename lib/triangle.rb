class Triangle
  # write code here
  attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    sides = [@one, @two, @three]
    if (sides.all? {|side| side > 0} && sides.max < sides.inject(:+)/2.0)
      if @one == @two && @two == @three
        :equilateral
      elsif @one == @two || @one == @three || @two == @three
        :isosceles
      else 
        :scalene
      end
    else 
      raise TriangleError
    end 
  end
  
  class TriangleError < StandardError
    "invalid input"
  end 
end
