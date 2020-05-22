require 'pry'
class Triangle

  attr_accessor :side_a, :side_b, :side_c, :type

   def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
   end

   class TriangleError < StandardError
    end

   def kind
     sides = [(side_a), (side_b), (side_c)]

    if  side_a + side_b <= side_c || side_b + side_c <=side_a || side_c + side_a <=side_b
      # binding.pry
      raise TriangleError
    elsif side_a == side_b && side_b == side_c
        @type = :equilateral
    elsif side_a == side_b || side_b == side_c || side_c == side_a
        @type = :isosceles
    else
       @type = :scalene
    end
   end


end
