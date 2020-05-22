class Triangle
  # write code here
  attr_accessor :length_one, :length_two, :length_three
  
  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end
  
  
  
  class TriangleError < StandardError
    end
  
  def kind 
    if !(@length_one + @length_two > @length_three && @length_one + @length_three > @length_two && @length_three + @length_two > @length_one)
      raise TriangleError
    elsif @length_one == @length_two && @length_one == @length_three
      :equilateral
    elsif @length_one == @length_two || @length_one == @length_three || @length_three == @length_two
      :isosceles
    elsif @length_one != @length_two && @length_one != @length_three && @length_three != @length_two
      :scalene
    end
  end
    
    
end
