class Triangle
attr_accessor :sode_a, :side_b, :side_c


def initialize(side_a, side_b, side_c)
@side_a = side_a
@side_b = side_b
@side_c = side_c
end

def kind
if @side_a == @side_b && @side_a == @side_c && @side_b == @side_c
 return :equilateral
elsif @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
  return :scalene
elsif @side_a == @side_b && @side_a != @side_c && @side_b !=  @side_c
  return :isosceles
elsif @side_a == @side_c && @side_b != @side_a && @side_c != @side_b
  return :isosceles
elsif @side_b == @side_c && @side_b != @side_a && @side_a != @side_c
  return :isosceles
elsif @side_a == 0 && @side_b == 0 && @side_c == 0
  require 'pry'
  begin
  raise TriangleError
rescue TriangleError => error
   puts error.message
   end
elsif @side_a < 0 || @side_b < 0 || @side_c <  0
  begin
  raise
rescue TriangleError => error
   puts error.message
   end
end
end

class TriangleError < StandardError
  def message
    "you must give a proper side lengths for a legal triangle!"
  end

end


end
