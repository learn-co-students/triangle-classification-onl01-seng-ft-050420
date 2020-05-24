class Triangle
  # write code here
  attr_accessor :a, :b, :c, :array
  # @array =[]
  def initialize(a,b,c)
    @a =a
    @b =b
    @c =c
    @array =[@a,@b,@c]
  end
  
  def kind 
    # array =[@a,@b,@c]
    if @array.all? {|x| x>0 && (@array.sum -x)>x}
      if @a==@b && @b==@c 
        return :equilateral
      elsif (@array.length) -(@array.uniq.length) !=0
        return :isosceles
      else
        return :scalene
      end
  
     else
         raise TriangleError
    end
  end
  
  class TriangleError < StandardError
  end
    
end
