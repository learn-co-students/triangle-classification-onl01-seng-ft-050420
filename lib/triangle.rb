require 'pry'

class Triangle

attr_accessor :side_a, :side_b, :side_c


def initialize (side_a, side_b, side_c)
  @side_a = side_a
  @side_b = side_b
  @side_c = side_c
  @side_array = []
  @side_array << @side_a
  @side_array << @side_b
  @side_array << @side_c
end

def kind
  triangle = @side_array.uniq.size
  bad_triangle = @side_array.sort
  if @side_array.min <= 0
    raise TriangleError
  elsif triangle == 1
    :equilateral
  elsif triangle == 2
    if bad_triangle[0] + bad_triangle[1] <= bad_triangle[2]
      raise TriangleError
    else
    :isosceles
  end
  elsif triangle == 3
    if bad_triangle[0] + bad_triangle[1] <= bad_triangle[2]
      raise TriangleError
    else
    :scalene
  end
  else
    "something"
end
end


class TriangleError < StandardError
end

end
