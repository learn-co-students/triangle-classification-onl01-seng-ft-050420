require 'pry'

class Triangle
  # s1, s2, s3 are lengths of the 3 sides
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end


  def kind
    if  (s1 <= 0 || s2 <= 0 || s3 <= 0) ||
        (s1 >= s2 + s3 || s2 >= s1 + s3 || s3 >= s1 + s2)
        begin
          raise TriangleError
       
          puts error.message
        end
    
    elsif s1 == s2 && s2 == s3
      :equilateral
    elsif s1 != s2 && s2 != s3 && s1 != s3
      :scalene
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    end
  end 

  class TriangleError < StandardError
    def message
      "Not a valid triangle"
    end
  end

end 