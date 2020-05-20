require 'pry'
class Triangle
  attr_accessor :sideA, :sideB, :sideC, :type
   def initialize (sideA, sideB, sideC)

    @sideA=sideA
    @sideB=sideB
    @sideC=sideC
   end
  

   def kind 
     sides = [(sideA), (sideB), (sideC)]
    
    if  sideA + sideB <= sideC || sideB + sideC <=sideA || sideC + sideA <=sideB 
      # binding.pry
      raise TriangleError 
    elsif sideA == sideB && sideB == sideC
        @type = :equilateral
        @type
    elsif sideA == sideB || sideB == sideC || sideC == sideA
        @type = :isosceles
        @type
    else
       @type = :scalene
       @type
    end
   end



    class TriangleError < StandardError
    end
end
