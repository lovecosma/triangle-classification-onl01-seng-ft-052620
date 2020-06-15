require 'pry'

class Triangle
attr_accessor :sode_a, :side_b, :side_c


def initialize(side_a, side_b, side_c)
  @side_a = side_a
  @side_b = side_b
  @side_c = side_c
end


def kind
  @illegal = (@side_a + @side_b <= @side_c)
  @illegal2 =  (@side_a + @side_c <= @side_b)
  @illegal3 = (@side_b + @side_c <= @side_a)
  if (@side_a == @side_b && @side_a == @side_c && @side_b == @side_c) && !(@side_a <= 0 || @side_b <= 0 || @side_c <= 0) && !@illegal && !@illegal2 && !@illegal3
   :equilateral
 elsif @side_a != @side_b && @side_a != @side_c && @side_b != @side_c && !(@side_a <= 0 || @side_b <= 0 || @side_c <= 0) && !@illegal && !@illegal2 && !@illegal3
    :scalene
  elsif @side_a == @side_b && @side_a != @side_c && @side_b !=  @side_c && !(@side_a <= 0 || @side_b <= 0 || @side_c <= 0) && !@illegal && !@illegal2 && !@illegal3
    :isosceles
  elsif @side_a == @side_c && @side_b != @side_a && @side_c != @side_b && !(@side_a <= 0 || @side_b <= 0 || @side_c <= 0) && !@illegal && !@illegal2 && !@illegal3
    :isosceles
  elsif @side_b == @side_c && @side_b != @side_a && @side_a != @side_c && !(@side_a <= 0 || @side_b <= 0 || @side_c <= 0) && !@illegal && !@illegal2 && !@illegal3
    :isosceles
  elsif (@side_a <= 0 || @side_b <= 0 || @side_c <= 0)
    raise TriangleError
  elsif @illegal
    raise TriangleError
  elsif @illegal2
    raise TriangleError
  elsif @illegal3
    raise TriangleError
end
end

class TriangleError < StandardError

end

end
