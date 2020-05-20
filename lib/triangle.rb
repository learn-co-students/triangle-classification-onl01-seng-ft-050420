require 'pry'
class Triangle
  attr_reader :leng_1, :leng_2, :leng_3 

  def initialize(leng_1, leng_2, leng_3)
    @leng_1 = leng_1
    @leng_2 = leng_2
    @leng_3 = leng_3
  end

  def kind
    if legal?
      if @leng_1 == @leng_2 && @leng_2 == @leng_3
        :equilateral
      elsif @leng_1 == @leng_2 || @leng_2 == @leng_3 || @leng_1 == @leng_3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def legal?
    if @leng_3 <= 0 || @leng_2 <= 0 || @leng_1 <= 0
      false
    elsif (@leng_1 + @leng_2) <= @leng_3 || (@leng_3 + @leng_2) <= @leng_1 || (@leng_1 + @leng_3) <= @leng_2
      false
    else
      true
    end
  end

  class TriangleError < StandardError
    def message
      "The lengths of the triangle are illegal"
    end
  end
end
